class AddEndTimeToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :end_time, :string
  end
end
