class PagesController < ApplicationController
  def about
    @heading = 'Страничка про нас!'
    @text = 'same text'
  end
end
