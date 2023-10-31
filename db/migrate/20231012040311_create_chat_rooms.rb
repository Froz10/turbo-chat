class CreateChatRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_rooms do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
    add_index :chat_rooms, :name, unique: true
  end
end
