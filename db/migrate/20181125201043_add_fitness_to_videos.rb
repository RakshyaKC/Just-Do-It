# frozen_string_literal: true

class AddFitnessToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :fitness, :string
  end
end
