class AddRatingToBibliographic < ActiveRecord::Migration
  def change
    add_column :bibliographics, :rating, :integer, default: 0
  end
end
