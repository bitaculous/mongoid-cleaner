config = File.expand_path '../../config/mongoid.yml', __FILE__

# Load configuration.
Mongoid.load! config, :test

# Adjust logging level for `Mongo::Logger`.
Mongo::Logger.logger.level = Logger::INFO