# Code challenge instructions

## Interface

In the code provided you'll find this method definition for you to implement:

    CurrencyExchange.rate(date, from_currency, to_currency)

The method definition should not be changed.

This method must return the exchange rate between `from_currency` and `to_currency` on `date` as a float.

If the method is unable to calculate the exchange rate requested, it should raise an exception.

If there is no rate for the date provided, it should raise an exception.

To implement the method definition per the requirements please create any new files, classes, methods, etc. that you feel necessary for a good design.

## Data Source

In the data directory we've included a JSON file of currency exchange rates which are based upon the Euro.  You should use this as your source of currency exchange rates for your solution.

## Solution Requirements

* Your solution should be written in Ruby
* We want to know what the exchange rate is between two currencies on a given date.
* In the future we will want to switch between different sources of foreign exchange rates and we would like you to design your solution with this in mind. Other sources might not be JSON and may not be based on the EUR.

## New to Ruby?

To install Ruby follow the instructions here:

    https://www.ruby-lang.org/en/downloads/

To install Rubygems - a package management framework for Ruby - go here:

    https://rubygems.org/pages/download

To install Bundler - a Ruby gem management gem:

    https://bundler.io/

## Getting Started

We've included an example test file to get you started.  The example and test script both use the [Test::Unit framework](http://test-unit.github.io/) but you're more than welcome to use any other test framework you're more comfortable with.

You can use the following steps to run the solution.  We'll use the same steps when we come to test it, but if your solution requires additional setup you can include details in the README.

1. Install gems:

```
bundle install
```

2. Run tests:

```
bundle exec ruby test/run_tests.rb
```

3. Start a console session:

```
bundle exec irb -Ilib
```

4. Load the template library:

```
require 'currency_exchange'
```

5. Calculate an exchange rate:

```
CurrencyExchange.rate(Date.new(2018, 11, 22), "USD", "GBP")
```
