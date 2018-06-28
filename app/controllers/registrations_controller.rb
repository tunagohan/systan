# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def create
    if self.resource = resource_class.only_deleted.find_by(email: sign_up_params[:email])
      resource.update(sign_up_params)
      resource.update_attributes(deleted_at: nil, confirmed_at: nil, confirmation_token: nil)
      resource.send_confirmation_instructions
    else
      build_resource(sign_up_params)
    end
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
end
