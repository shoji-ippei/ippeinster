require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase

  def setup
    user1 = users(:michael)
    user2 = users(:archer)
    @relationship = Relationship.new(follower_id: user1.id, followed_id: user2.id)
  end

  test "should be valid" do
    assert @relationship.valid?
  end

  test "should require a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end

  test "should require a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
