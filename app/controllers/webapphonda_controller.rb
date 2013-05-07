class WebapphondaController < ApplicationController
  def index    
  # if params[:self] =="self"
  #  session[:inline] = params[:text_id] 
  #  aaa()
       #render :text => params[:text_id]
      #render params[:label_id] => params[:text_id] 
 #   else
     # redirect_to :action => "http://localhost:3000/webapphonda"
 #   end 
  end
  
  def async_greeting
    @name = params[:text_id] 
    render   
  end
  
end
