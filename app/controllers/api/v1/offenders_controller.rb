class Api::V1::OffendersController < ApplicationController
  before_action :set_offender, only: %i[ show update destroy ]

  # GET /offenders
  def index
    @offenders = Offender.all

    render json: @offenders
  end

  # GET /offenders/1
  def show
    render json: @offender
  end

  # POST /offenders
  def create
    @offender = Offender.new(offender_params)

    if @offender.save
      render json: @offender, status: :created, location: @offender
    else
      render json: @offender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offenders/1
  def update
    if @offender.update(offender_params)
      render json: @offender
    else
      render json: @offender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offenders/1
  def destroy
    @offender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offender
      @offender = Offender.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offender_params
      params.require(:offender).permit(:name)
    end
end
