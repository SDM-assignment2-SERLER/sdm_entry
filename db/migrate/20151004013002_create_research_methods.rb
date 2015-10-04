class CreateResearchMethods < ActiveRecord::Migration
  def change
    create_table :research_methods do |t|
      t.string :name
      t.integer :sort

      t.timestamps null: false
    end
  end
end
