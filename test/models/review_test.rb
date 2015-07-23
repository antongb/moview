require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "should not save review without title" do
    review = Review.new
    assert_not review.save
  end

  test "should save review with params given" do
    review = Review.new(moviename: "Bambi", email: "test@test.net", rating: 10)
    assert review.save
  end
end
