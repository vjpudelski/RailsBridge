class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def upvote
    self.votes.create
  end

  def downvote
    self.votes.first.destroy
  end
end
