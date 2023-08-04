# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def register
      # Fetch user data from the request
      user_data = {
        username: params[:username],
        email: params[:email],
        password: params[:password]
      }
  
      # Create a new user record in the database (this will depend on your model and database setup)
      # For example, if you have a User model:
      user = User.create(user_data)
  
      if user.valid?
        render json: { message: 'Registration successful!' }, status: :created
      else
        render json: { error: 'Registration failed. Please check your data.' }, status: :unprocessable_entity
      end
    end
  end
  