class AddAttachmentDrawing2ToPlans < ActiveRecord::Migration
  def self.up
    change_table :plans do |t|
      t.attachment :drawing_2
    end
  end

  def self.down
    drop_attached_file :plans, :drawing_2
  end
end
