class WebapphondaController < ApplicationController
  def index    
  end
  
  def getText
  @name = params[:text_id]
  
    if params[:self] 
    render "webapphonda/index"
    else
      sendMessage(@name)
       #redirect_to "https://www.google.co.jp?wordRecv="  + ERB::Util.url_encode("'"+ @name +"'")
    end
  end
  
  def recvWord
    word = params[:wordRecv]
    #redirect_to "https://www.google.co.jp?wordRecv="  + ERB::Util.url_encode("'"+ @name +"'")
    #redirect_to 'http://www.google.co.jp?wordRecv=' + word
    sendMessage(word)
  end
  
 private 
 def  sendMessage(param)  
 #redirect_to 'http://www.google.co.jp?wordRecv=' + param
 #redirect_to "https://www.google.co.jp?wordRecv="  + ERB::Util.url_encode("'"+ param +"'")
 redirect_to "https://www.google.co.jp?wordRecv="  + ERB::Util.url_encode(param)

 end
   
end
