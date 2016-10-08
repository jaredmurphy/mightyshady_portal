class AddIncomeCategoryToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :income_category, foreign_key: true
  end
end
