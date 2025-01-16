class RepositoriesController < ApplicationController
  before_action :find_project
  before_action :authorize

  def index
    @repositories = @project.repositories
  end

  def show
    @repository = @project.repositories.find(params[:id])
    @entries = @repository.entries
  end

  def revision
    @repository = @project.repositories.find(params[:id])
    @revision = @repository.find_revision(params[:rev])
  end

  def raw_file
    @repository = @project.repositories.find(params[:id])
    raw_data = @repository.find_file(params[:rev], params[:path])
    send_data raw_data, filename: File.basename(params[:path]), disposition: 'inline'
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
