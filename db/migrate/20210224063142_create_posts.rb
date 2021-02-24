class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|

      t.references :user, foreign_key: true
      t.string     :name, null: false
      t.text       :content
      t.string     :photo
      t.timestamps
    end
  end
end
