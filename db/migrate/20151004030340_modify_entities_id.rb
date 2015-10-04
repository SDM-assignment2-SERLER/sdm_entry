class ModifyEntitiesId < ActiveRecord::Migration
  def change
  	rename_column(:entities_methodologies, :entities_id, :entity_id)
  end
end
