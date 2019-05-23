Object = require "assets/lib/classic/classic"
Input = require "assets/lib/input/Input"
Timer = require "assets/lib/hump/timer"
require "assets/obj/circle"
require "assets/obj/hypercircle"
assets = require("assets/lib/cargo/cargo").init("assets")

function love.load()
  circletest = HyperCircle(400, 300, 50, 10, 120)
  input = Input()
  input:bind("mouse1", "test")
  input:bind("space", "test2")
  input:bind("/", "add")
  input:bind("dpup", "up")
  input:bind("dpdown", "down")
  input:bind("dpright", "right")
  input:bind("dpleft", "left")
  input:bind("l2", "trigger")
  sum = 0
  timer = Timer()
  circle = {radius = 24}
  timer:tween(6, circle, {radius = 96}, "in-out-cubic")
end


function love.update(dt)
  if input:pressed("test") then print("pressed") end
  if input:released("test") then print("released") end
  if input:down("test2", 0.5) then print("test event") end
  if input:down("add", 0.25) then sum = (sum + 1), print(sum) end
  if input:pressed("up") then print("up") end
  if input:pressed("down") then print("down") end
  if input:pressed("right") then print("right") end
  if input:pressed("left") then print("left") end
  if input:pressed("trigger") then print("left trigger") end
  timer:update(dt)
end

function love.draw()
  love.graphics.circle("fill", 400, 300, circle.radius)
end
