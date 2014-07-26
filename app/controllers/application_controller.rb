class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] ||
      http_accept_language.compatible_language_from(I18n.available_locales) ||
      I18n.default_locale
  end

  def default_url_options(options = {})
    if self.class.parent == Admin
      {}
    else
      { locale: I18n.locale }
    end
  end
end
