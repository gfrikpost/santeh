class PagesController < ApplicationController
  
  def home
    @content = Content.find_by_alias("test")
  end
end