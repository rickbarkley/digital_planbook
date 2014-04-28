class AddAttachmentDrawing1ToPlans < ActiveRecord::Migration
  def self.up
    change_table :plans do |t|
      t.attachment :drawing_1
    end
  end

  def self.down
    drop_attached_file :plans, :drawing_1
  end
end
