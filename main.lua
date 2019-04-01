Object = require "assets/lib/classic/classic"
require "assets/obj/circle"
require "assets/obj/hypercircle"
assets = require("assets/lib/cargo/cargo").init("assets")

function love.load()
  circletest = HyperCircle(400, 300, 50, 10, 120)
end


function love.update(dt)
  
end

function love.draw()
  circletest:draw()
end
