module CurrencyExchange
  require 'json'
  require 'date'

  @currency_file = File.read('./data/eurofxref-hist-90d.json')
  @data = JSON.parse(@currency_file)

  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    @data[date][to_currency] / @data[date][from_currency]
  end
end
