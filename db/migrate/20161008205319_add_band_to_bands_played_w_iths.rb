class AddBandToBandsPlayedWIths < ActiveRecord::Migration[5.0]
  def change
    add_reference :bands_played_withs, :bands, foreign_key: true
  end
end
