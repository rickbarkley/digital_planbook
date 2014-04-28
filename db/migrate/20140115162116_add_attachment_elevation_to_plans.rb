class AddAttachmentElevationToPlans < ActiveRecord::Migration
  def self.up
    change_table :plans do |t|
      t.attachment :elevation
    end
  end

  def self.down
    drop_attached_file :plans, :elevation
  end
end
