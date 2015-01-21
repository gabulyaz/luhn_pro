# luhn-pro

[![Gem Version](https://badge.fury.io/rb/luhn_pro.svg)](http://badge.fury.io/rb/luhn_pro)
[![Build Status](https://travis-ci.org/gabulyaz/luhn_pro.svg?branch=master)](https://travis-ci.org/gabulyaz/luhn_pro)

A simple Luhn-algorithm implementation

## Installation

Add this line to your application's Gemfile:

    gem 'luhn_pro'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install luhn_pro

## Usage

``` ruby
require 'luhn_pro'

LuhnPro.get_check_num "991234"
# => "6"

LuhnPro.get_check_num "5555-555"
# => "1"

LuhnPro.get_check_num ""
# => nil 

LuhnPro.getnum "1469048"
# => "14690481"

LuhnPro.isvalid? "9752 2379 7337 3557"
# => true

LuhnPro.getnum ""
# => nil
```

## Reference

About the [Luhn-algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm) on Wikipedia.

## Licence

MIT License