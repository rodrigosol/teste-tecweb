class HelloController < ApplicationController
  def index
    @teste = params.inspect
  end

end
