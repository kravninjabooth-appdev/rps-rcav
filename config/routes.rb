Rails.application.routes.draw do

get("/", {:controller => "application", :action => "homepage"})



  get("/rock", {:controller => "application", :action => "play_rock"})

end
