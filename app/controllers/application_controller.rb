class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render ({:template => "game_templates/rules.html.erb"})
  end

  def play_paper
     @comp_move = ["rock", "paper", "scissors"].sample 
    
     if @comp_move =="rock"
      @outcome = "won"
     elsif @comp_move == "paper" 
      @outcome = "tied"
     elsif @comp_move == "scissors"
      @outcome = "lost"
     end 


    render ({:template => "game_templates/user_paper.html.erb", :layout => "wrapper.html.erb"})

  end

    def play_rock
      #write a ton of code
      #redirect_to("https://www.wikipedia.org")

      #render({:plain => "Howdy, world!"})

      render({:template => "game_templates/user_rock.html.erb",:layout => "wrapper.html.erb"})
    end

    def play_scissors
      @comp_move = ["rock", "paper", "scissors"].sample 
    
      if @comp_move =="rock"
       @outcome = "won"
      elsif @comp_move == "paper" 
       @outcome = "lost"
      elsif @comp_move == "scissors"
       @outcome = "tie"
      end 

      render({:template => "game_templates/user_scissors.html.erb",:layout => "wrapper.html.erb"})
    end



end
