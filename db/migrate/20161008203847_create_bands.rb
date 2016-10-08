class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :genre

      t.timestamps
    end
  end
end
