class MoneyType < ActiveRecord::Type::Integer
  def cast(value)
    if !value.kind_of?(Numeric) && value.include?('£')
      price_in_pounds = value.gsub(/\£/, '').to_f
      super(price_in_pounds * 100)
    else
      super
    end
  end

  def serialize(value)
    cast(value)
  end
end
