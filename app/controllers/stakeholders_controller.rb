class StakeholdersController < ApplicationController

  before_action :set_stakeholder, only: [:show, :update, :destroy]

  # GET /stakeholders
  def index
    @stakeholders = Stakeholder.all
    # json_response(@stakeholders)
    render json: @stakeholders.as_json(include: [:ratings])
  end

  # POST /stakeholders
  def create
    @stakeholder = Stakeholder.create!(stakeholder_params)
    Rating.create(power: params[:power], interest: params[:interest], positivity: params[:positivity], stakeholder_id: @stakeholder.id)
    json_response(@stakeholder.as_json(include: [:ratings]))
  end

  # GET /stakeholders/:id
  def show
    json_response(@stakeholder)
  end

  # PUT /stakeholders/:id
  def update
    @stakeholder.update(stakeholder_params)
    head :no_content
  end

  # DELETE /stakeholders/:id
  def destroy
    @stakeholder.destroy
    head :no_content
  end

  private

  def stakeholder_params
    # whitelist params
    params.permit(:title, :name, :alias)
  end

  def set_stakeholder
    @stakeholder = Stakeholder.find(params[:id])
  end
end
