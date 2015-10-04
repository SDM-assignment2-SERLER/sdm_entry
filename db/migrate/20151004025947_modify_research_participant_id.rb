class ModifyResearchParticipantId < ActiveRecord::Migration
  def change
  	rename_column(:entities_research_participants, :research_participants_id, :research_participant_id)
  end
end
