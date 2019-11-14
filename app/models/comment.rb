class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(attrs)
    return if attrs.values.first.empty?

    self.user = User.new(username: attrs.values.first)
  end
end
