# LyricsJapanese

This is a helper script for entering **Japanese lyrics** into **music scores**.
Convert natural Japanese sentences into word-spacing notes
for musical notes.
example:
```
  "恋しちゃおう 夢見ちゃおう 恋のダンスサイト" 
```
is converted to
```
  "こ い し ちゃ お う ゆ め み ちゃ お う こ い の ダ ン ス サ イ ト"
```
This format can be directly put into the lyrics window
of DAW software "Digital Performer" by Mark of the unicorn.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lyrics_japanese'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install lyrics_japanese

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome!
1. Fork it ( https://github.com/shinyaohtani/lyrics_japanese )
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MasterDelivery project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/shinyaohtani/lyrics_japanese/blob/master/CODE_OF_CONDUCT.md).
