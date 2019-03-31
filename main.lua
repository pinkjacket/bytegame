Object = require "assets/lib/classic/classic"
require "assets/obj/circle"
assets = require("assets/lib/cargo/cargo").init("assets")

function love.load()
  circletest = Circle(400, 300, 50)
end


function love.update(dt)
  
end

function love.draw()
  circletest:draw()
end
