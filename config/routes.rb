Rails.application.routes.draw do
  get("/", {:controller => "omnicalc", :action => "homepage"})
  get("/square/new", {:controller => "omnicalc", :action => "square"})
  get("/square/results", {:controller => "omnicalc", :action => "square_results"})
  get("/square_root/new", {:controller => "omnicalc", :action => "square_root_calc"} )
  get("/square_root/results", {:controller => "omnicalc", :action => "square_root_results"})
  get("/payment/new", {:controller => "omnicalc", :action => "payment_calc"} ) 
  get("/payment/results", {:controller => "omnicalc", :action => "payment_results"}) 
  get("/random/new", {:controller => "omnicalc", :action => "random_number"} ) 
  
  get("/random/results", {:controller => "omnicalc", :action => "random_number_results"})
end
