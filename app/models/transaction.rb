class Transaction < ApplicationRecord
  attribute :success, :boolean
  attribute :bank_fee_in_pence, MoneyType.new, default: '£2.50'
end
