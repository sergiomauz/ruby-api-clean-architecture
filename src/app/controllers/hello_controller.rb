class HelloController < ApplicationController
  def index
    binding.break
    render plain: "Hello, world!"
  end
end
