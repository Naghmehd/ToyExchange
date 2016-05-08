class StaticPagesController < ApplicationController
  def home
    @toys = Toy.all
  end
end
