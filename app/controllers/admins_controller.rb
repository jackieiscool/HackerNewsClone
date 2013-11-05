class AdminsController < ApplicationController

  def index
    @basics = BasicUser.all
    @supers = SuperUser.all
    @admins = Admin.all
  end

end
