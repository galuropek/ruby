class ChangeTimeAndEndtimeToBeDatetimeInPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :time, :datetime
    change_column :posts, :end_time, :datetime
  end
end
