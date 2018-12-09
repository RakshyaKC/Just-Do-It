# frozen_string_literal: true

class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.belongs_to :invitee, references: :users
      t.belongs_to :inviter, references: :users
      t.belongs_to :video
      # https://stackoverflow.com/questions/2933582/rails-migration-t-references-with-alternative-name
      t.timestamps
    end
  end
end
