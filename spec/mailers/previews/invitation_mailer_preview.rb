# frozen_string_literal: true

class InvitationMailerPreview < ActionMailer::Preview
  def invite_to_video
    InvitationMailer.with(invitation: Invitation.first).invite_to_video
  end

  def invite_to_site
    InvitationMailer
      .with(inviter: 'rakshya@gmail.com', invitee: 'newyogi@gmail.com')
      .invite_to_site
  end
end
