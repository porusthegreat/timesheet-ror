module Api
  module V1
    class ProjectsController < ApplicationController

      def index
        projects = Project.order('created_at DESC')
        render json: {status: 'SUCCESS', data: projects}, status: :ok
      end

      def show
        project = Project.find(params[:id])
        render json: {status: 'SUCCESS', data: project}, status: :ok
      end

      def create
        project = Project.new(project_params)

        if project.save
          render json: { status: 'SUCCESS', data: project }, status: :ok
        else
          render json: { status: 'Error', data: project.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        project = Project.find(params[:id])
        project.destroy
        render json: {status: 'SUCCESS', data: project}, status: :ok
      end

      def update
        project = Project.find(params[:id])
        if project.update_attributes(project_params)
          render json: {status: 'Update successful', data: project}, status: :ok
        else
          render json: {status: 'Update not successful', data: project.errors}, status: :unprocessable_entity
        end
      end

      private

      def project_params
        params.permit(:title, :description, :owner, :status, :tech_stack, :github_link)
      end

    end
  end
end