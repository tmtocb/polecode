class ArticlesController < ApplicationController
  def list
    @articles = Articles::Services::List.new.call
  end
end
