class HelloController < ApplicationController
  def index
    a = 1
    b = 2
    binding.break
    x = a + b
    binding.break
    render plain: "Hello, world!"
  end
end
