## Solution Setup and Run Instructions

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

## Design Decisions

Everything was made with simplicity in mind. It was tempting to (and I did) create different classes outside of the currency_exchange.rb file which would contain things such as parsers and calculators but I decided against it to look for a more simple and faster solution which would not bloat the application. This comes with the tradeoff of having to manually change the base_currency variable and JSON if other currencies or file types were chosen.
