class CreateEntitiesMethodologies < ActiveRecord::Migration
  def change
    create_table :entities_methodologies, id: false do |t|
    	t.belongs_to :entities, index: true
    	t.belongs_to :methodologies, index: true
    end
  end
end
