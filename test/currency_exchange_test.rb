require 'test/unit'
require 'currency_exchange'
require 'date'

class CurrencyExchangeTest < Test::Unit::TestCase
  def setup; end

  def test_non_base_currency_exchange_is_correct
    correct_rate = 1.2870493690602498
    assert_equal correct_rate, 
                 CurrencyExchange.rate(Date.new(2018,11,22), "GBP", "USD")
  end

  def test_non_base_currency_exchange_is_correct_2
    correct_rate = 2.0590988747463568 
    assert_equal correct_rate,
                 CurrencyExchange.rate(Date.new(2018,11,22), "BRL", "HKD")
  end

  def test_base_to_currency_exchange_is_correct
    correct_rate = 0.007763975155279502
    assert_equal correct_rate, 
                 CurrencyExchange.rate(Date.new(2018,11,22), "JPY", "EUR")
  end

  def test_from_base_currency_exchange_is_correct
    correct_rate = 141.2
    assert_equal correct_rate,
                 CurrencyExchange.rate(Date.new(2018,11,22), "EUR", "ISK")
  end

  def test_false_date_raises_error
    assert_raise do
      CurrencyExchange.rate(Date.new(2017,11,22), "EUR", "ISK")
    end
  end

  def test_failing_from_currency_raises_error
    assert_raise do
      CurrencyExchange.rate(Date.new(2018,11,22), "FAIL", "ISK")
    end
  end

  def test_failing_to_currency_raises_error
    assert_raise do
      CurrencyExchange.rate(Date.new(2018,11,22), "EUR", "FAIL")
    end
  end
  
end
