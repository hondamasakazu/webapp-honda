require "yaml"


class WebapphondaController < ApplicationController
  def index    
  end
  
  def getText
  @name = params[:text_id]
  file = YAML.load_file("#{Rails.root}/config/redirecturl.yml")
  
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
 
 
 fileyml = YAML.load_file("#{Rails.root}/config/redirecturl.yml")
 #fileyml = YAML.load_file("#{Rails.root}/config/database.yml")
 file = fileyml[Rails.env]
 data = file["url"]
 
 redirect_to data + "?wordRecv=" + ERB::Util.url_encode(param)

# redirect_to "https://www.google.co.jp?wordRecv="  + ERB::Util.url_encode(param)

 end
   
end
