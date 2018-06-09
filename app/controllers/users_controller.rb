class UsersController < ApplicationController
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to :root, data: {confirm: "本当に退会しますか?"}
  end
end
