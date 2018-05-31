class DroppedSentMessageTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :sent_messages
  end
end
