class CreateEvidenceMethods < ActiveRecord::Migration
  def change
    create_table :evidence_methods do |t|
      t.string :name
      t.integer :sort

      t.timestamps null: false
    end
  end
end
