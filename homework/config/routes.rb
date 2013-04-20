Hw2::Application.routes.draw do
  get "/dice", controller: "dice", action:"index", as:"dice"

  post "/dice", controller: "dice", action:"roll", as:"dice_roll"
  
  get "/poker", controller: "poker", action:"index", as:"poker"
  
  get "/rps", controller: "rock_paper_scissor", action:"index", as:"rps"
  
  post "/rps", controller: "rock_paper_scissor", action:"choose"
end
