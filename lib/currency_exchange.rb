module CurrencyExchange
  require 'json'
  require 'date'

  @currency_file = File.read('./data/eurofxref-hist-90d.json')
  # Set File Type (json/xml/yaml)
  @data = JSON.parse(@currency_file)
  # Set Base Currency
  @base_currency = 'EUR'

  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    # Calculations
    raise 'There is no rate for the date provided' unless @data[date]
    to_currency = (to_currency == @base_currency) ? 1 : @data[date][to_currency]
    from_currency = (from_currency == @base_currency) ? 1 : @data[date][from_currency]
    raise 'Unable to calculate exchange rate' unless to_currency && from_currency
    to_currency / from_currency
    
  end

end
