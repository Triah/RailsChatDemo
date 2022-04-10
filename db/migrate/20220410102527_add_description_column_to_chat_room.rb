class AddDescriptionColumnToChatRoom < ActiveRecord::Migration[7.0]
  def change
  	add_column :chat_rooms, :description, :string
  end
end
