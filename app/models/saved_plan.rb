# == Schema Information
#
# Table name: saved_plans
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  plan_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_email :string(255)
#

class SavedPlan < ActiveRecord::Base
  attr_accessible :plan_id, :user_id, :user_email
  belongs_to :user
  belongs_to :plan
  accepts_nested_attributes_for :plan

  #validates :user_id, :presence   => true
  #validates :plan_id, :presence   => true
end
