class ApplicationController < ActionController::Base
  include Authentication
  allow_unauthenticated_access only: %i[ index show ]
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
