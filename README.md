# MongoidAutoincId

Auto increment id for mongoid 3.0.0

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_autoinc_id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_autoinc_id

## Requiement

    $ mongoid 3.0.0+

## Usage

    $ 1.9.3p125 :001 > p = Post.new(title: 'Do it')
    $ => #<Post _id: , _type: nil, title: 'Do it', body: nil>
    $ 1.9.3p125 :004 > p.save
    $ => true
    $ 1.9.3p125 :005 > p.id
    $ => 1

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
