# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :artists
  has_many :releases, through: :artists
end
