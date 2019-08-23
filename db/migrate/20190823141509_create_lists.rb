class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :creatable, :default => false
      #Ex:- :default =>''
      t.references :cards, foreign_key: true
      t.boolean :done, :default => false
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
