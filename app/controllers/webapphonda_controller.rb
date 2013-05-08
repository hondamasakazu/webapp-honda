class WebapphondaController < ApplicationController
  def index    
  end
  
  def getText
  @name = params[:text_id] 
    if paramas[:dd]     
    render "webapphonda/index"
    else
      test(@name)
    end
  end
  
  def recvWord
    word = params[:wordRecv]
    test(word)
    #redirect_to :action => "http://localhost:3000/webapphonda?wordRecv=" + word
  end
  
 private 
 def  test(param) 
 redirect_to :action => "http://localhost:3000/webapphonda?wordRecv=" + param
 end
  
end
