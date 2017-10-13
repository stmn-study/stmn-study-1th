class RenameActivityTypeToEventType < ActiveRecord::Migration[5.0]
  def change
    rename_column :activities, :type, :event_type
  end
end
