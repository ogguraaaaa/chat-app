class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|

      t.timestamps
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
