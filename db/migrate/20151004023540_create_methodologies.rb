class CreateMethodologies < ActiveRecord::Migration
  def change
    create_table :methodologies do |t|
      t.string :name
      t.integer :sort

      t.timestamps null: false
    end
  end
end
