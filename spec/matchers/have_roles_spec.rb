require 'spec_helper'

root_dir = Rails3::Assist::Directory.rails_root

describe 'RSpec matcher to spec that your User model is configured with a Role strategy' do
  use_orm :none  

  before :each do
    create_model :user do
      %q{
        include Roles::ActiveRecord
        
        strategy :one_role, :default
        valid_roles_are :admin, :guest
        role_class :role        
      }
    end        

    create_model :admin do
      %q{
        include Roles::ActiveRecord
        
        strategy :many_roles, :default
        valid_roles_are :admin, :guest, :special
        role_class :role        
      }
    end        

    puts read_model :user
  end

  after :each do              
    remove_models :user, :admin
  end

  it "should have the User model setup with :one_role default strategy" do
    root_dir.should have_model :user do |clazz|
      clazz.should have_default_roles
      clazz.should have_roles_strategy :one_role
      clazz.should have_roles_orm :active_record
      clazz.should have_roles_class :role
    end
  end

  it "should have the Admin model setup with :many_roles strategy" do
    root_dir.should have_model :admin do |clazz|
      clazz.should have_valid_roles :admin, :guest, :special
      clazz.should have_roles_strategy :many_roles, :default
      clazz.should have_roles_orm :active_record
      clazz.should have_roles_class :role
    end
  end
end

