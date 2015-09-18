describe Mongoid::Cleaner do
  it 'has a version number' do
    expect(Mongoid::Cleaner::VERSION).not_to be_nil
  end

  it 'can be configured' do
    described_class.available_strategies.each do |strategy|
      described_class.strategy = strategy
    end
  end

  it 'can be configured with symbol' do
    described_class.available_strategies.map(&:to_sym).each do |strategy|
      described_class.strategy = strategy
    end
  end

  it 'fails with wrong strategy' do
    expect { described_class.strategy = :test }.to raise_error Mongoid::Cleaner::UnknownStrategyError
  end

  describe 'drop' do
    before do
      described_class.strategy = 'drop', {}

      User.create login: 'test'
      Article.create title: 'test'
    end

    it 'cleans up the collections' do
      expect(described_class.collections.size).to eq 2

      described_class.clean

      expect(described_class.collections.size).to eq 0
    end
  end

  describe 'truncate' do
    before do
      described_class.strategy = 'truncate', {}

      User.create login: 'test'
      Article.create title: 'test'
    end

    it 'cleans up the collections' do
      expect(described_class.collections.size).to eq 2

      described_class.clean

      expect(described_class.collections.size).to eq 2

      expect(User.where(login: 'test').one).to be_nil
      expect(Article.where(tile: 'test').one).to be_nil
    end
  end

  describe 'options' do
    describe 'only' do
      context 'truncate' do
        before do
          described_class.strategy = 'truncate', { only: %w(users) }

          User.create login: 'test'
          Article.create title: 'test'
        end

        it 'cleans up only the selected collections' do
          described_class.clean

          expect(User.where(login: 'test').one).to be_nil
          expect(Article.where(title: 'test').one).not_to be_nil
        end
      end

      context 'drop' do
        before do
          described_class.strategy = 'drop', { only: %w(users) }

          User.create login: 'test'
          Article.create title: 'test'
        end

        it 'cleans up only the selected collections' do
          described_class.clean

          expect(described_class.collections.size).to eq 1
          expect(described_class.collections).not_to include 'users'
        end
      end
    end

    describe 'except' do
      context 'truncate' do
        before do
          described_class.strategy = 'truncate', { except: %w(users) }

          User.create login: 'test'
          Article.create title: 'test'
        end

        it 'cleans up only the selected collections' do
          described_class.clean

          expect(User.where(login: 'test').one).not_to be_nil
          expect(Article.where(tile: 'test').one).to be_nil
        end
      end

      context 'drop' do
        before do
          described_class.strategy = 'drop', { except: %w(users) }

          User.create login: 'test'
          Article.create title: 'test'
        end

        it 'cleans up only the selected collections' do
          described_class.clean

          expect(described_class.collections.size).to eq 1
          expect(described_class.collections).to include 'users'
        end
      end
    end
  end

  describe 'cleaning' do
    before do
      described_class.strategy = 'drop', { except: %w(articles) }

      User.create login: 'test'
      Article.create title: 'test'
    end

    it 'can be called with a block' do
      described_class.cleaning do
        # ...
      end

      expect(described_class.collections.size).to eq 1
    end

    it 'can be called directly' do
      described_class.cleaning

      expect(described_class.collections.size).to eq 1
    end
  end
end