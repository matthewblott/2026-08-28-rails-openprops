class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy ]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to @todo, notice: "Todo was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo, notice: "Todo was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @todo.destroy!
    redirect_to todos_path, notice: "Todo was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.expect(todo: [ :title, :description, :completed ])
    end
end
