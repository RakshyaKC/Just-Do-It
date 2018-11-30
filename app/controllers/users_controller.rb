# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin]
  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  # PATCH '/change-fitness/:id'
  def changefitness
    current_user.fitness = fitness_params[:fitness]
    # user_creds[:fitness] === value being passed through ajax calls in the client side.
    current_user.save
    # send back json version of current_user using serializer class as below
    render json: current_user, serializer: UserSerializer
  end

  # DELETE '/destroy'
  def destroy
    @user = current_user
    @user.destroy
    head :no_content
  end

  private

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation, :fitness)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  def fitness_params
    params.permit(:fitness)
  end
end
