class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.timestamps
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
    end
  end
end
