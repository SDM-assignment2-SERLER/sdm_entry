class AddDescriptionToMethodologies < ActiveRecord::Migration
  def change
    add_column :methodologies, :desc, :string
  end
end
