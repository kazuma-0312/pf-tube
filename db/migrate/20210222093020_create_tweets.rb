class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string   :title,   null: false
      t.string   :youtube_url, null: false
      t.text   :text,      null: false
      t.references   :user,         foreign_key: true
      t.string   :comment_id,         foreign_key: true
      t.string   :like_id,         foreign_key: true
      t.timestamps
    end
  end
end
