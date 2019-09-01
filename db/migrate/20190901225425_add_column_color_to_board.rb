class AddColumnColorToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :color, :string
  end
end
