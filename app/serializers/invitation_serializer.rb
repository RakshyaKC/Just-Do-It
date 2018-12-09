class InvitationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :invitee
  has_one :inviter
  has_one :video
end
