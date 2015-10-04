class CreateEntitiesEnvidenceMethods < ActiveRecord::Migration
  def change
    create_table :entities_evidence_methods, id:false do |t|
		t.belongs_to :entity, index: true
    	t.belongs_to :evidence_method, index:true
    end
  end
end
