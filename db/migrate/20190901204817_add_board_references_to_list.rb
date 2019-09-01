class AddBoardReferencesToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :board, foreign_key: true
  end
end
