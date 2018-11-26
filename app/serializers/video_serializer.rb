# frozen_string_literal: true

class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :length_in_min, :fitness, :url
end
