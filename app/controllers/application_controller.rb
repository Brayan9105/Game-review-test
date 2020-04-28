class ApplicationController < ActionController::Base
  before_action :set_feature
  helper_method :is_admin!

  def set_feature
    @feature = Genre.where(feature_in_navbar: true).order('name ASC')
  end

  def is_admin!
    unless current_user&.admin
      redirect_to root_path
    end
  end
end
