class AddImage2ToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :image, :string
    add_column :plans, :image2, :string
    add_column :plans, :image3, :string
    add_column :plans, :image4, :string
    add_column :plans, :image5, :string
    add_column :plans, :image6, :string
    add_column :plans, :image7, :string
    add_column :plans, :image8, :string
    add_column :plans, :image9, :string
    add_column :plans, :image10, :string
    add_column :plans, :image11, :string
    add_column :plans, :image12, :string
  end
end
