class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end
