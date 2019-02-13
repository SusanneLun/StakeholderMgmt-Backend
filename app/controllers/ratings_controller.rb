class RatingsController < ApplicationController
  # before_action :set_stakeholder
  before_action :set_stakeholder_rating, only: [:show, :update, :destroy]

  # GET /ratings
  def index
    @stakeholder = Stakeholder.find(params[:stakeholder_id])
    json_response(@stakeholder.ratings)
  end

  # GET /ratings/:id
  def show
    json_response(@rating)
  end

  # POST /ratings
  def create
    @stakeholder = Stakeholder.find(params[:stakeholder_id])
    print params

    @stakeholder.ratings.create!(rating_params)
    # json_response(@stakeholder, :created)
    print @stakeholder.ratings.last
    render json: @stakeholder.as_json(include: [:ratings])
  end

  # PUT /ratings/:id
  def update
    @srating.update(rating_params)
    head :no_content
  end

  # DELETE /ratings/:id
  def destroy
    @rating.destroy
    head :no_content
  end

  private

  def rating_params
    # whitelist params
    params.permit(:power, :interest, :positivity, :stakeholder_id, :rating, :project_id)
  end

#  def set_stakeholder_rating
#    @stakeholder = Rating.find(params[:todo_id])
#  end

  def set_stakeholder_rating
    @rating = @stakeholder.ratings.find_by!(params[:id]) if @todo
  end
end
