class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.integer :meeting_id
      t.integer :talk_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
