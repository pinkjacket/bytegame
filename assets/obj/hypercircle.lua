HyperCircle = Circle:extend()

function HyperCircle:new(x, y, radius, line_width, outer_radius)
  HyperCircle.super.new(self, x, y, radius)
  self.line_width = line_width
  self.outer_radius = outer_radius
end

function HyperCircle:draw()
  love.graphics.circle("fill", self.x, self.y, self.radius)
  love.graphics.setLineWidth(self.line_width)
  love.graphics.circle("line", self.x, self.y, self.outer_radius)
end