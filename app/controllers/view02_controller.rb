class View02Controller < ApplicationController
  http_basic_authenticate_with name: "todo", password: "todo"
  def index
  end
end
