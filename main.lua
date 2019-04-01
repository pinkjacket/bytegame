Object = require "assets/lib/classic/classic"
Input = require "assets/lib/input/Input"
require "assets/obj/circle"
require "assets/obj/hypercircle"
assets = require("assets/lib/cargo/cargo").init("assets")

function love.load()
  circletest = HyperCircle(400, 300, 50, 10, 120)
  input = Input()
  input:bind("mouse1", "test")
  input:bind("space", "test2")
  input:bind("/", "add")
  sum = 0
end


function love.update(dt)
  if input:pressed("test") then print("pressed") end
  if input:released("test") then print("released") end
  if input:down("test2", 0.5) then print("test event") end
  if input:down("add", 0.25) then sum = (sum + 1), print(sum) end
end

function love.draw()
  circletest:draw()
end
