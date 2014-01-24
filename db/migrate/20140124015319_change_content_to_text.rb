class ChangeContentToText < ActiveRecord::Migration
  def change
    change_column :talks, :content, :text
  end
end
