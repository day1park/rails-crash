class PagesController < ApplicationController
  def about
    @title = 'About us'
    @content = 'a sentence string example '
  end
end
