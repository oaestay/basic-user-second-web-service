module Verify
  def verify_user(user, image)
    return user.image == image
  end
end
