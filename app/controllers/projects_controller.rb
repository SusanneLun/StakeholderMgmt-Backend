class ProjectsController < ApplicationController

  # before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.all
    # json_response(@projects)
    render json: @projects.as_json(include: [:stakeholders])
  end

  # POST /projects
def create
    @project = Project.create!(project_params, user_id: current_user.id)
    if @project.save
    json_response(@project, :created)
    else
    render json: {error: "Unable to create project."}, status: 400
    end
  end


  # GET /projects/:id
  def get_stakeholders
    @project = Project.find(params["project_id"])
    if @project
      render json: @project.stakeholders.as_json(include: [:ratings, :strategies])
    else
      render json: {error: "Stakeholders not found."}, status: 404
    end
  end

  # PUT /projects/:id
  def update
    @project.update(project_params)
    head :no_content
  end

  # DELETE /projects/:id
  def destroy
    @project.destroy
    head :no_content
  end

  private

  def project_params
    # whitelist params
    params.permit(:name, :description, :user_id, :project_id)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
