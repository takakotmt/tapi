class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
