class View01Controller < ApplicationController
  #http_basic_authenticate_with :name => "geekz", :password => "pass"
  http_basic_authenticate_with name: "todo", password: "todo"
  def index
  end
end
