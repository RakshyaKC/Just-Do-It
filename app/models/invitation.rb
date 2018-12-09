# frozen_string_literal: true

class Invitation < ApplicationRecord
  belongs_to :invitee, class_name: 'User'
  belongs_to :inviter, class_name: 'User'
  belongs_to :video
end
