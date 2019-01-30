module Api
  module V1
    class TasksController < ApplicationController
      def index
        tasks = Task.where('project_id = ' + params[:project_id])
        render json: { status: 'SUCCESS', data: tasks }, status: :ok
      end

      def show
        tasks = Task.find(params[:id])
        render json: { status: 'SUCCESS', data: tasks }, status: :ok
      end

      def create
        @project = Project.find(params[:project_id])
        task = Task.new(task_params)
        task.project_id = @project.id
        task.status = 'Active'
        Rails.logger.debug task_params.inspect
        if task.save
          render json: { status: 'SUCCESS', data: task }, status: :ok
        else
          render json: { status: 'Error', data: task.errors }, status: :unprocessable_entity
        end
      end

      def update
        task = Task.find(params[:id])
        if task.update_attributes(task_params)
          render json: { status: 'Update successful', data: task }, status: :ok
        else
          render json: { status: 'Error', data: task.errors }, status: :unprocessable_entity
        end
      end

      private

      def task_params
        params.permit(:title, :description, :assignee, :status, tasks_attributes: [:id])
      end

    end
  end
end