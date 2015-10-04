class AddStatesToBibliographics < ActiveRecord::Migration
  def change
    add_column :bibliographics, :states, :string, default: 'waiting'
  end
end
