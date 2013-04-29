class WebapphondaController < ApplicationController
  def index    
   if params[:self_render]
      render :text => ""
    else
      #redirect_to :action => "render_text"
    end 
  end
  
end
