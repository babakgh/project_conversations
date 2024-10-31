class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :update]

  def index
    @projects = Project.all
  end

  def show
    @activities = (@project.comments.order(created_at: :desc) +
                  @project.project_status_changes.order(created_at: :desc))
                 .sort_by(&:created_at).reverse
  end

  def update
    new_status = params.dig(:project, :status)
    @project.change_status(new_status, current_user)
    redirect_to @project, notice: 'Project status updated successfully'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
