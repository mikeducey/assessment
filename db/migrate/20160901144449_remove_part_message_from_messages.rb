class RemovePartMessageFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :message, :string
  end
end
