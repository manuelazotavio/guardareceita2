class UsersController < ApplicationController
    allow_unauthenticated_access
    skip_forgery_protection
      before_action :set_user, only: %i[ show edit update destroy ]

      def index
        @users = User.all
      end

      def show
      end

      def new
        @user = User.new
      end

      def create
        @user = User.new(user_params)
        if @user.save
          puts "user post ok"
        else
          render :new, status: :unprocessable_entity
        end
      end

      def edit
      end

      def update
        if @user.update(user_params)
          puts "user update ok"
        else
          render :edit, status: :unprocessable_entity
        end
      end

      def destroy
        if @user.destroy
          puts "user delete ok"
        else
          render :destroy, status: :unprocessable_entity
        end
      end

      private
        def set_user
          @user = User.find(params[:id])
        end

        def user_params
          params.expect(user: [ :name,  :email_address, :password_digest ])
        end
end
