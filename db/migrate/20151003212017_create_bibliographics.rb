class CreateBibliographics < ActiveRecord::Migration
  def change
    create_table :bibliographics do |t|
      t.string :title
      t.string :author
      t.date :year
      t.string :source
      t.string :book
      t.string :publisher
      t.string :doi
      t.integer :number
      t.string :page
      t.string :month

      t.timestamps null: false
    end
  end
end
