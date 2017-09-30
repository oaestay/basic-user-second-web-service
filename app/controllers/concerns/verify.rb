module Verify
  def verify_user(user, image)
    return user.image == image && Random.rand() <= 0.9
  end

  def check_header
    logger.debug(request.env["API-SECRET-KEY"])
    return request.env["API-SECRET-KEY"] == ENV["API_SECRET_KEY"]
  end
end
