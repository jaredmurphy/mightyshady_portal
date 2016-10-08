class AddEventToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :event, foreign_key: true
  end
end
