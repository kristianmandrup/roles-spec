require 'spec_helper'

root_dir = Rails3::Assist::Directory.rails_root

describe 'RSpec matcher to spec that your User model is configured with a Role strategy' do
  use_orm :none  

  before :each do
    create_model :user do
      %q{
        include Roles::ActiveRecord
        
        strategy :one_role
        valid_roles_are :admin, :guest
        role_class :role        
      }
    end        
    puts read_model :user
  end

  after :each do              
    remove_model :user
  end

  it "should have the User model setup with the default devise strategies" do
    root_dir.should have_model :user do |clazz|
      clazz.should have_valid_roles :admin, :guest
      clazz.should have_roles_strategy :one_role
      clazz.should have_roles_orm :active_record
      clazz.should have_roles_class :role
    end
  end
end

