class AddEventCategoryToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :event_category, foreign_key: true
  end
end
