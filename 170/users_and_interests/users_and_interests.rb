require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require 'yaml'

before do
  @users = YAML.load_file('data/users.yaml')
  @number_of_users = @users.count
  # @number_of_interests = @users.reduce(0) { |sum,(key,user)| sum + user[:interests].count }
end

get "/" do
  redirect "/list"
end

get "/list" do
  erb :users_list
end

get "/users/:name" do
  @name = params[:name]
  @user = @users[@name.to_sym]
  @other_users = @users.select { |key, _| key.to_s != params[:name] }

  erb :user
end

helpers do
  def count_interests(users)
    users.reduce(0) { |sum,(key,user)| sum + user[:interests].count }
  end
end