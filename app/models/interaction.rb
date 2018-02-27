class Interaction < ApplicationRecord
  after_create :match
  belongs_to :user_one, class_name: 'User'
  belongs_to :user_two, class_name: 'User'

  private
  def match
    if Interaction.where(user_one_id: self.user_two_id, user_two_id: self.user_one_id).count > 0
      
    end
  end
end
