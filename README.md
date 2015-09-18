[Mongoid Cleaner]
=================

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Code Climate Status][Code Climate Status]][Code Climate]
[![Test Coverage Status][Test Coverage Status]][Test Coverage]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Cleaner for Mongoid with drop and truncation strategy.**

Installation
------------

1. Add Mongoid Cleaner to your Gemfile:

    ```ruby
    gem 'mongoid-cleaner', github: 'bitcoveries/mongoid-cleaner'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

```ruby
Mongoid::Cleaner.strategy = 'drop', { only: %w(users) }
Mongoid::Cleaner.clean

Mongoid::Cleaner.strategy = 'truncate', { except: %w(users) }
Mongoid::Cleaner.clean
```

With [Rspec]:

```ruby
RSpec.configure do |config|
  config.before(:suite) do
    Mongoid::Cleaner.strategy = :drop
  end

  config.around(:each) do |example|
    Mongoid::Cleaner.cleaning do
      example.run
    end
  end
end
```

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### See Test Coverage

Run `COVERAGE=true rspec`.

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Credits
-------

### All credits goes to team of [trommsdorff + drüner, innovation + marketing consultants GmbH] for [MongoidCleaner],
which this Gem is based on.

License
-------

Mongoid Cleaner is released under the [MIT License (MIT)], see [LICENSE].

[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Code Climate]: https://codeclimate.com/github/bitaculous/mongoid-cleaner "Mongoid Cleaner at Code Climate"
[Code Climate Status]: https://img.shields.io/codeclimate/github/bitaculous/mongoid-cleaner.svg?style=flat "Code Climate Status"
[Gemnasium]: https://gemnasium.com/bitaculous/mongoid-cleaner "Mongoid Cleaner at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/mongoid-cleaner.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/mongoid-cleaner/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/mongoid-cleaner/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Mongoid Cleaner]: https://bitaculous.github.io/mongoid-cleaner/ "Cleaner for Mongoid with drop and truncation strategy."
[MongoidCleaner]: https://github.com/td-berlin/mongoid_cleaner "MongoidCleaner with drop and truncation strategy"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Test Coverage]: https://codeclimate.com/github/bitaculous/mongoid-cleaner "Test Coverage (Code Climate)"
[Test Coverage Status]: https://img.shields.io/codeclimate/coverage/github/bitaculous/mongoid-cleaner.svg?style=flat "Test Coverage Status"
[Travis CI]: https://travis-ci.org/bitaculous/mongoid-cleaner "Mongoid Cleaner at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/mongoid-cleaner.svg?style=flat "Travis CI Status"
[trommsdorff + drüner, innovation + marketing consultants GmbH]: http://www.td-berlin.com "trommsdorff + drüner, innovation + marketing consultants GmbH"