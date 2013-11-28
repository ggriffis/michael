class CreateAdminUser < ActiveRecord::Migration  def migrate(direction)
    super
    # Create a default user
    AdminUser.create!(:email => (ENV["ADMIN_USERNAME"]).dup, :password => (ENV["ADMIN_PASSWORD"]).dup, :password_confirmation => (ENV["ADMIN_PASSWORD"]).dup) if direction == :up
  end
end
