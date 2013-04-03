# http://stackoverflow.com/questions/13367656/using-activemodelserializer-in-rails-json-data-differs-between-json-and-inde
# http://stackoverflow.com/questions/11571777/ember-data-and-mongodb-how-to-handle-id

class UsersController < ApplicationController
  def index
    render json: users
  end

  def show
    puts "user: #{user}"

    render json: user
  end

  def destroy
    user.destroy
    render json: user
  end

  def update    
    user.update params[:user]
    render json: user
  end

  def create
    user.save
    render json: user
  end

  protected

  def new_user
    @new_user ||= User.new params[:user]
  end

  def users
    User.all.to_a
  end

  def user
    @user ||= User.find params[:id]
  end
end
