# frozen_string_literal: true

class ExamplesController < OpenReadController
  # OpenReadController allows anyone to read, update or destroy the examples
  # database.
  # ProtectedController will hide all HTTP requests to inauthenticated users.
  before_action :set_example, only: %i[update destroy]
  # set_example is a method defined below.

  # GET /examples
  # GET /examples.json
  def index
    @examples = Example.all

    render json: @examples
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: Example.find(params[:id])
  end

  # POST /examples
  # POST /examples.json
  def create
    # TOKEN looks up current_user whether the parent class is OpenReadController
    # or ProtectedController
    # we want to use current_user to build our resource
    # .build is same as new
    @example = current_user.examples.build(example_params)
    # => example with user_id automatically filled in. User_id = current_user_id
    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      render json: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy

    head :no_content
  end

  def set_example
    @example = current_user.examples.find(params[:id])
    # finding only examples created by the current_user
  end

  def example_params
    params.require(:example).permit(:text)
  end

  private :set_example, :example_params
end
