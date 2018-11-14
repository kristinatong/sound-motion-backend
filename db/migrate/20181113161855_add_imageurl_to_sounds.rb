class AddImageurlToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :image_url, :string
  end
end
