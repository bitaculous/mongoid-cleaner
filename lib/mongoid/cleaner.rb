require 'mongoid'

module Mongoid
  module Cleaner # :nodoc:
    class UnknownStrategyError < ArgumentError; end

    class << self
      attr_reader :strategy

      def available_strategies
        @available_strategies ||= %w(truncate drop)
      end

      def strategy=(*options)
        strategy = options.flatten.shift.to_s
        @options = options.flatten.last if options.flatten.last.is_a? Hash

        raise UnknownStrategyError unless available_strategies.include? strategy

        @strategy = strategy
      end

      def client
        @client ||= Mongoid.default_client
      end

      def collections
        client.command(
          listCollections: 1,
          filter: {
            name: {
              '$not' => /.?system\.|\$/
            }
          }
        ).first[:cursor][:firstBatch].map { |collection| collection['name'] }
      end

      def collections_with_options
        return collections unless @options

        return collections if @options.empty?

        if @options[:only]
          collections.select { |collection| @options[:only].include? collection }
        elsif @options[:except]
          collections.select { |collection| !@options[:except].include? collection }
        end
      end

      def drop
        collections_with_options.each { |collection| client[collection].drop }

        true
      end

      def truncate
        collections_with_options.each { |collection| client[collection].find.delete_many }

        true
      end

      def clean
        public_send strategy
      end

      def cleaning
        clean

        yield if block_given?
      end
    end
  end
end