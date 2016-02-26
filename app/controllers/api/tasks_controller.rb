class Api::TasksController < Api::ApiController

  def index
    @tasks = Task.all
    render json: @tasks
  end

end
