class UsersController < ActionController::Base

  def index
    matching_users = User.all
    
    @list_of_users =  matching_users.order({:username =>:asc})

    render ({ :template => "users_templates/index.html.erb"})
  end

end
