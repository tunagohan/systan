class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :title
      t.string :yomi
      t.text :body
      t.string :user_id
      t.timestamps
    end
  end
end
