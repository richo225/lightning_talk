class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :success
      t.string :confirmed_at
      t.string :bank_fee_in_pence

      t.timestamps
    end
  end
end
