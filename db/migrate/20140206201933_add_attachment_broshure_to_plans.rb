class AddAttachmentBroshureToPlans < ActiveRecord::Migration
  def self.up
    change_table :plans do |t|
      t.attachment :broshure
    end
  end

  def self.down
    drop_attached_file :plans, :broshure
  end
end
