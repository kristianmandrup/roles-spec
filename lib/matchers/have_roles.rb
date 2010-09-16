require 'code-spec' 
require 'active_support/inflector'

module RSpec::RubyContentMatchers
  module Roles
    def have_default_roles
      have_call :valid_roles_are, :args => [:admin, :guest]
    end

    def have_valid_roles *names
      have_call :valid_roles, :args => names
    end

    def have_roles_strategy strategy, options = nil
      return have_call :strategy, strategy.to_sym if !options
      have_call :strategy, :args => [strategy.to_sym, options]
    end

    def have_roles_orm orm_name
      include_module "Roles::#{orm_name.to_s.camelize}"
    end

    def have_roles_class clazz
      have_call :role_class, clazz.to_sym
    end
  end
end

