# Minitest::Clr

Just a gem that colorizes the final output of a Minitest test suite:

![Alt text](https://monosnap.com/file/m4MfgpxNPycheUfTIj3XSK8zIfzMOk.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-clr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-clr

## Usage

Add this to your test helper file:

```ruby
require "minitest/clr"
```

Then, run your test files with:

```bash
ruby -I test:lib test/some_file_test.rb --clr
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/minitest-clr.

