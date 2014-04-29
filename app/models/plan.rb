# == Schema Information
#
# Table name: plans
#
#  id                     :integer          not null, primary key
#  bedrooms               :integer
#  sqfoot                 :integer
#  levels                 :string(255)
#  name                   :string(255)
#  half_bath              :string(255)
#  bathrooms              :string(255)
#  living                 :integer
#  suite                  :string(255)
#  dining                 :integer
#  view                   :string(255)
#  garage                 :integer
#  garage_loc             :string(255)
#  width                  :string(255)
#  depth                  :string(255)
#  casita                 :string(255)
#  court                  :string(255)
#  study                  :string(255)
#  style                  :string(255)
#  media_string           :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  drawing_1_file_name    :string(255)
#  drawing_1_content_type :string(255)
#  drawing_1_file_size    :integer
#  drawing_1_updated_at   :datetime
#  drawing_2_file_name    :string(255)
#  drawing_2_content_type :string(255)
#  drawing_2_file_size    :integer
#  drawing_2_updated_at   :datetime
#  elevation_file_name    :string(255)
#  elevation_content_type :string(255)
#  elevation_file_size    :integer
#  elevation_updated_at   :datetime
#  broshure_file_name     :string(255)
#  broshure_content_type  :string(255)
#  broshure_file_size     :integer
#  broshure_updated_at    :datetime
#  image                  :string(255)
#  image2                 :string(255)
#  image3                 :string(255)
#  image4                 :string(255)
#  image5                 :string(255)
#  image6                 :string(255)
#  image7                 :string(255)
#  image8                 :string(255)
#  image9                 :string(255)
#  image10                :string(255)
#  image11                :string(255)
#  image12                :string(255)
#

class Plan < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :drawing_1, :drawing_2, :elevation, :drawing_1_file_name, :drawing_1_content_type, :drawing_1_file_size, :drawing_1_updated_at, 
  				:casita, :court, :depth, :dining, :garage, :garage_loc, :half_bath, :levels, :living, :media_string, :name, :sqfoot, :study, :style, :suite, :view, :width,
  				:broshure_file_name, :broshure_content_type, :broshure_file_size, :broshure_updated_at, :broshure, :image, :image2, :image3, :image4, :image5,:image6, :image7, :image8, :image9, :image10, :image11, :image12  
  has_attached_file :drawing_1,  :convert_options => { :all => "-blur 0x8" }, :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
  has_attached_file :drawing_2,  :convert_options => { :all => "-blur 0x8" }, :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
  has_attached_file :elevation,  :convert_options => { :all => "-blur 0x8" }, :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
  has_attached_file :broshure 

  mount_uploader :image, PortfolioUploader
  mount_uploader :image2, PortfolioUploader
  mount_uploader :image3, PortfolioUploader  
  mount_uploader :image4, PortfolioUploader  
  mount_uploader :image5, PortfolioUploader 
  mount_uploader :image6, PortfolioUploader
  mount_uploader :image7, PortfolioUploader 
  mount_uploader :image8, PortfolioUploader 
  mount_uploader :image9, PortfolioUploader 
  mount_uploader :image10, PortfolioUploader 
  mount_uploader :image11, PortfolioUploader
  mount_uploader :image12, PortfolioUploader

  has_many :users, through: :saved_plans
  has_many :saved_plans, :dependent => :destroy
  accepts_nested_attributes_for :saved_plans

      def accessible_to_user_by_saved?(user)
        #Look for course enrollments that belong to given user and have not expired
       saved_plans = self.saved_plans.where("user_id = ?", user.id)
       !saved_plans.blank? # Returns true if there is at least one registration found, otherwise returns false
    end
end
