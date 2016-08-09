class TasksController < ApplicationController
  before_action :set_Task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks,status: 200
  end

  # GET /tasks/1
  def show
    render json: @task, status: 200
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
    
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task, status:200
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task=Task.find(params[:id])
    @task.destroy
    head 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :due_by,:assign_to,:description,:email,:note_at)
    end
end
