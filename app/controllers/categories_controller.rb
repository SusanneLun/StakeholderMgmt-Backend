class CategoriesController < ApplicationController



  def index
    @categories = Category.all
    # json_response(@categories)
    render json: @categories.as_json(include: [:strategies])
  end

  def create
      @category = Category.create!(category_params)
      if @category.save
      json_response(@category, :created)
      else
      render json: {error: "Unable to create category."}, status: 400
      end
    end

    # DELETE /categories/:id
    def destroy
      @category = Category.find(params[:id])
      @category.destroy
    end


    private

    def category_params
      # whitelist params
      params.permit(:name )
    end

    def set_stakeholder
      @category = Category.find(params[:id])
    end

end
