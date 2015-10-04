class CreateResearchParticipants < ActiveRecord::Migration
  def change
    create_table :research_participants do |t|
      t.string :name
      t.integer :sort

      t.timestamps null: false
    end
  end
end
