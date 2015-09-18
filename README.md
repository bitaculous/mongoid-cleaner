[Mongoid Cleaner]
=================

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Cleaner for Mongoid with drop and truncation strategy.**

Installation
------------

1. Add Mongoid Cleaner to your Gemfile:

    ```ruby
    gem 'mongoid-cleaner', github: 'bitcoveries/mongoid-cleaner'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

License
-------

Mongoid Cleaner is released under the [MIT License (MIT)], see [LICENSE].

[Gemnasium]: https://gemnasium.com/bitaculous/mongoid-cleaner "Mongoid Cleaner at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/mongoid-cleaner.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/mongoid-cleaner/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/mongoid-cleaner/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Mongoid Cleaner]: https://bitaculous.github.io/mongoid-cleaner/ "Cleaner for Mongoid with drop and truncation strategy."
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Travis CI]: https://travis-ci.org/bitaculous/mongoid-cleaner "Mongoid Cleaner at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/mongoid-cleaner.svg?style=flat "Travis CI Status"