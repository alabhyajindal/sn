class AddFieldsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :url, :string
    add_column :posts, :text, :text
  end
end
