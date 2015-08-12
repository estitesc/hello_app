class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def hello
    randomizer = Random.new
    random_int = randomizer.rand(3)
    
    reloader = "<script>setTimeout(function() { location.reload(); }, 3000);</script>"
    
    if random_int == 0
      render text: reloader + "Well shit"
    end
    if random_int == 1
      render text: reloader + "This is nice"
    end
    if random_int == 2
      render text: reloader + "<br /><br /> wooooowie!"
    end
    if random_int == 3
      render text: reloader + "Or this maybe..."
    end
    # render text: "HELLO there WORLD!" + random_int.to_s
  end
end
