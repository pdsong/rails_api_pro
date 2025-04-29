require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'user with validate email should be valid' do
    user=User.new(email:'test@testcom.com',password_digest:'123456')
    assert user.valid?
  end
  test 'user with invalidate email should be valid' do
    user=User.new(email:'test.com',password_digest:'123456')
    assert user.valid?
  end
  test 'user with taken email should be valid' do
    other_user=users(:one)
    user=User.new(email:other_user.email,password_digest:'test')    
    assert user.valid?
  end



end
