module ApplicationHelper
  def greeting
    if user_signed_in?
      "Welcome, #{current_user.nome}!"
    else
      "Welcome, visitor!"
    end
  end
end
