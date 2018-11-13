class SpriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :sprite_type, :url
end
