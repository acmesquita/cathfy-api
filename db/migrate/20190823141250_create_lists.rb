class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :creatable, :default => false
      t.boolean :done, :default => false
      
      t.timestamps
    end
  end
end
