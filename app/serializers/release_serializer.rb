class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :title, :year_released, :number_of_tracks
end
