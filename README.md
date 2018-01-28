# Icobench

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/icobench`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icobench'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install icobench

## Usage

English
```ruby
ib = IcobenchClient.new(private_key = nil, public_key = nil)
# get all ICOs
ib.icos

# get filters for ICOs
ib.icos_filters

# Recommended brands ICOBench
ib.trending

# ICOBenchの銘柄別評価
ib.ratings

# ICOBench brand name evaluation
ib.profile(id:1) # ICO一覧のid
ib.profile(url:"viberate") # urlが"https://icobench.com/ico/viberate"なら"viberate"

# ICO statistics
ib.stats

# People related to ICO
ib.people_all

# Experts related to ICO
ib.people_expert

# Registered people related to ICO
ib.people_registered

```

Japanese
```ruby
ib = IcobenchClient.new(private_key = nil, public_key = nil)
# ICO一覧を取得
ib.icos

# ICOのfilter一覧を取得
ib.icos_filters

# ICOBenchおすすめの銘柄
ib.trending

# ICOBenchの銘柄別評価
ib.ratings

# ICOの銘柄詳細
ib.profile(id:1) # ICO一覧のid
ib.profile(url:"viberate") # urlが"https://icobench.com/ico/viberate"なら"viberate"

# ICOの統計
ib.stats

# ICOに関連する人々
ib.people_all

# ICOに関連する専門家
ib.people_expert

# ICOに関連する登録された人々
ib.people_registered

```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/icobench.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
