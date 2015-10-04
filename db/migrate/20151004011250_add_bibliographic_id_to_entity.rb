class AddBibliographicIdToEntity < ActiveRecord::Migration
  def change
    add_column :entities, :bibliographic_id, :integer
  end
end
