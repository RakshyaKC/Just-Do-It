# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :Fitness_level
      t.string :Time_length

      t.timestamps
    end
  end
end
