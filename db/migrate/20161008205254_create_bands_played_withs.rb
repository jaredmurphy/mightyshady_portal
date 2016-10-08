class CreateBandsPlayedWiths < ActiveRecord::Migration[5.0]
  def change
    create_table :bands_played_withs do |t|
      t.date :date

      t.timestamps
    end
  end
end
