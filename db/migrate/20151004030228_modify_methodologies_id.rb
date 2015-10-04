class ModifyMethodologiesId < ActiveRecord::Migration
  def change
  	rename_column(:entities_methodologies, :methodologies_id, :methodology_id)
  end
end
