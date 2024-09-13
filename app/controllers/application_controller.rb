class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  include Pundit::Authorization

  rescue_from Pundit::NotAuthorizedError do
    redirect_to customers_path, alert: "Você não está autorizado a executar essa ação."
  end
  # allow_browser versions: :modern
end
