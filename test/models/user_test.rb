require 'test_helper'
require 'minitest/spec'

class UserTest < ActiveSupport::TestCase
  test "is invalid without email" do
    refute User.new(email: nil).valid?
  end

  test "email is unique" do
    User.create(email: "foo@bar.com")
    refute User.new(email: "foo@bar.com").valid?
  end
end
