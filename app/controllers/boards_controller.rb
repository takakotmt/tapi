class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
   @board = Board.new
  end

  def create
    @board = Board.create(board_params)
    if @board.save
      redirect_to boards_path
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def board_params
    params.require(:board).permit(:body)
  end

end
