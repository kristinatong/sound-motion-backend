class AddSpritetypeToSprites < ActiveRecord::Migration[5.2]
  def change
    add_column :sprites, :sprite_type, :string
  end
end
