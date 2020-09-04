class ApplicationController < ActionController::Base
	
	def after_sign_up_path_for(resource)
    redirect_to sites_path
  end

  def after_sign_in_path_for(resource)
    case resource
      when Client
        clients_items_top_path
      when Customer
      sites_path
    end
  end

end
