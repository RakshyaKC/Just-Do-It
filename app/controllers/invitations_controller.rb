# frozen_string_literal: true

class InvitationsController < ProtectedController
  # before_action :set_invitation, only: [:show, :update, :destroy]

  # GET /invitations
  # def index
  #   @invitations = Invitation.all
  #   render json: @invitations
  # end

  # GET /invitations/1
  # def show
  #   render json: @invitation
  # end

  # POST /invitations
  # def create
  # @invitation = Invitation.new(invitation_params)
  #
  # if @invitation.save
  #   render json: @invitation, status: :created, location: @invitation
  # else
  #  render json: @invitation.errors, status: :unprocessable_entity
  # end
  # end

  def create
    @inviter = current_user
    # puts @inviter
    @invitee = User.find_by(email: params[:invitee])
    # puts @invitee
    @video = Video.find(params[:video_id])
    # puts @video

    if @invitee
      @invitation =
        Invitation.create(inviter: @inviter, invitee: @invitee, video: @video)
      # puts @invitation
      # send_invitation to: params[:invitee], invitation: invitation
      InvitationMailer
        .with(invitation: @invitation)
        .invite_to_video
        .deliver_later
      # puts "(not really) sending an invitation to #{params[:invitee]}"
      render json: @invitation, status: :created
    else
      # send_introduction to: params[:invitee]
      # puts "(not really) sending an introduction to #{params[:invitee]}"
      InvitationMailer
        .with(inviter: @inviter.email, invitee: params[:invitee])
        .invite_to_video
        .deliver_later
      render json: 'User does not exist', status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invitations/1
  # def update
  #   if @invitation.update(invitation_params)
  #     render json: @invitation
  #   else
  #     render json: @invitation.errors, status: :unprocessable_entity
  #   end
  # end
  # # DELETE /invitations/1
  # def destroy
  #   @invitation.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_invitation
  #   @invitation = Invitation.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def invitation_params
    # sending invitee email and video id from the front end in video/events.js
    params.permit(:invitee, :video_id)
  end
end
