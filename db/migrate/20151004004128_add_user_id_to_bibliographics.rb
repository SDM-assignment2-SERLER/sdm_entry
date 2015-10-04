class AddUserIdToBibliographics < ActiveRecord::Migration
  def change
    add_column :bibliographics, :user_id, :integer
  end
end
