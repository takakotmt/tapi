class AddImageToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :image, :string, null: false
  end
end
