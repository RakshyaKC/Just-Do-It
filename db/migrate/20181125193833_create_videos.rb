# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :length_in_min
      t.string :url

      t.timestamps
    end
  end
end
