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

require 'test_helper'

class SavedPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
