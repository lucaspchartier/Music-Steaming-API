class ReleaseSerializer < ActiveModel::Serializer
  attributes :id, :title, :year_released, :number_of_tracks
end
