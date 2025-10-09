class HelloController < ApplicationController
  def index
    a = 1
    b = 2
    x = a + b
    render plain: "Hello, world!"
  end
end
