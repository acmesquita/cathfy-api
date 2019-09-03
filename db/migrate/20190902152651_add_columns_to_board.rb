class AddColumnsToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :start, :datetime
    add_column :boards, :end, :datetime
    add_column :boards, :objective, :string
  end
end
