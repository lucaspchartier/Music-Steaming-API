class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_formed, :genre, :releases
end
