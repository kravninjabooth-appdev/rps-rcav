class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

    def play_rock
      #write a ton of code
      redirect_to("https://www.wikipedia.org")
    end

end
