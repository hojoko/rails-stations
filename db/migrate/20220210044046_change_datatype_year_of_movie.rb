class ChangeDatatypeYearOfMovie < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :year, :string
  end
end
