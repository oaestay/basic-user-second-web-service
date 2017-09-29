class ApplicationController < ActionController::API
  include Verify
  include Response
  include ExceptionHandler
end
