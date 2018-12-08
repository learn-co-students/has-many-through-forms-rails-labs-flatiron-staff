class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def commented

    self.comments.map {|c| c.post}.uniq

  end
end
