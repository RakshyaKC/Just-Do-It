# frozen_string_literal: true

# https://guides.rubyonrails.org/action_mailer_basics.html

class InvitationMailer < ApplicationMailer
  def invite_to_video
    @invitation = params[:invitation]
    @url = "http://mysite.com/videos/#{@invitation.video.id}"
    mail(to: @invitation.invitee.email, subject: "Let's flow!")
  end

  def invite_to_site
    @inviter = params[:inviter]
    @invitee = params[:invitee]
    @url = 'http://mysite.com'
    mail(to: @invitee, subject: "Let's flow!")
  end
end
