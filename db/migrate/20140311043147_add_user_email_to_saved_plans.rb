class AddUserEmailToSavedPlans < ActiveRecord::Migration
  def change
    add_column :saved_plans, :user_email, :string
  end
end
