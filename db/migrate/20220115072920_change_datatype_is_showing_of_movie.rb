class ChangeDatatypeIsShowingOfMovie < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :is_showing, :integer
  end
end
