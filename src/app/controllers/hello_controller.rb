class HelloController < ApplicationController
  def index
    a = 1
    b = 2
    x = a + b
    binding.break
    render plain: "Hello, world!"
  end
end
