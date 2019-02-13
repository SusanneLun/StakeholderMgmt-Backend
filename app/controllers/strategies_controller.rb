class StrategiesController < ApplicationController

  def index
    @strategies = Strategy.all
    # json_response(@strategy)
    render json: @strategies.as_json(include: [:category])
  end

  def show
    @strategy=Strategy.find(params[:id])
    json_response(@strategy.as_json(include: [:category]))
  end

  def create
      @strategy = Strategy.create!(strategy_params)
      if @strategy.save
      json_response(@strategy, :created)
      else
      render json: {error: "Unable to create strategy."}, status: 400
      end
    end

    # DELETE /strategies/:id
    def destroy
      @strategy = Strategy.find(params[:id])
      @strategy.destroy
    end

  private

  def strategy_params
    # whitelist params
    params.permit(:name, :category_id )
  end

  def set_strategy
    @strategy = Strategy.find(params[:id])
  end

end
