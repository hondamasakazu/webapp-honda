class WebapphondaController < ApplicationController
  def index    
  end
  
  def getText
  @name = params[:text_id]
  
    if params[:self] 
    render "webapphonda/index"
    else
      sendMessage(@name)
    end
  end
  
  def recvWord
    word = params[:wordRecv]
    sendMessage(word)
  end
  
 private 
 def  sendMessage(param) 
 redirect_to :action => "http://localhost:3000/webapphonda/test?wordRecv=" + param
 end
 
 def test
   @word = params[:wordRecv]
   render "webapphonda/index"    
 end
  
end
