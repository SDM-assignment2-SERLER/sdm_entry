class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :research_aim
      t.string :research_metric
      t.string :evidence_benefit
      t.string :evidence_context
      t.string :evidence_result
      t.string :evidence_intergrity

      t.timestamps null: false
    end
  end
end
