class CreateEntitiesResearchParticipants < ActiveRecord::Migration
  def change
    create_table :entities_research_participants, id: false do |t|
		t.belongs_to :entity, index: true
    	t.belongs_to :research_participants
    end
  end
end
