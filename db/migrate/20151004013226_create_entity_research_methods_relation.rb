class CreateEntityResearchMethodsRelation < ActiveRecord::Migration
  def change
    create_table :entities_research_methods, id: false do |t|
		t.belongs_to :entity, index: true
    	t.belongs_to :research_method, index: true 
    end
  end
end
