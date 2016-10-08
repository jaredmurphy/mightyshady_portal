class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
