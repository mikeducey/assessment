class AddDetailsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :body, :string
  end
end
