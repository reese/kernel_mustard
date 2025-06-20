<div align="center">
  <img alt="Prism Ruby parser" height="256px" src="https://github.com/reese/kernel-mustard/blob/main/assets/colonel-mustard.jpeg?raw=true">
</div>

# `kernel-mustard`

This gem adds some methods to `Kernel` and `nil` to support assertions that values are non-nil (with the ability to define defaults).

If you're using Sorbet, these methods are more fluent alternatives to `T.must`.

```ruby
# 😵‍💫
T.must(T.must(foo.value).attribute.maybe_another_value)

# ✅
foo.value.must!.attribute.maybe_another_value.must!
```

However, its usage isn't limited to Sorbet, and it intentionally doesn't have a hard dependency on `sorbet-runtime` -- it could also be a very valuable debugging tool, or just a handy way to check for `nil` in any Ruby project.

## Installation

```bash
bundle add kernel-mustard
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install kernel-mustard
```

For Sorbet users, there are `.rbi` files included with the gem. Assuming you're using Tapioca, you can import those with `bin/tapioca gem kernel-mustard`.

## Usage

```ruby
require "kernel-mustard"
```

That's it! If you've got a single entrypoint or initialization file, be sure to require this there so that it applies uniformly to your whole codebase.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/reese/kernel-mustard.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
