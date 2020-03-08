class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @board = Board.new
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :index
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:body, :image)
  end
end
