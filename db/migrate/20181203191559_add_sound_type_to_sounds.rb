class AddSoundTypeToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :sound_type, :string
  end
end
