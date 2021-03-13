class AddResponseUserIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :response_comment, :int
  end
end
