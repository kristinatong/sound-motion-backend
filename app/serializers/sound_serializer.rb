class SoundSerializer < ActiveModel::Serializer
  attributes :id, :name, :sound_type, :image_url
end
