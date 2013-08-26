class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :content
      t.integer :creator_id

      t.timestamps
    end
  end
end
