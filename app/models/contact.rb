class Contact < ApplicationRecord
has_many :contact_groups
has_many :groups, through: :contact_groups

  
  def friendly_time
    updated_at.strftime('%b %d, %Y')
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
