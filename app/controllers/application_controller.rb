class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :image, :gender_id, :body_id, :blood_type_id, :birth_place_id, :residence_id, :income_id, :occupation_id, :age, :liking, :height])
    
  end  
end
