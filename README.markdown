# Roles spec

RSpec matchers to spec your User models to make sure they apply certain Role strategies. To be used with the Roles gems - see [Roles generic](http://github.com/kristianmandrup/**roles_generic**)

## Install

<code>gem install roles-spec</code>

## Usage

Teaser:
<pre>
  root_dir.should have_model :user do |clazz|
    clazz.should have_valid_roles :user, :admin
    clazz.should have_role_strategy :admin_flag
  end  
</pre>

Full RSpec example:
<pre>
  root_dir = Rails3::Assist::Directory.rails_root

  describe 'User model applies role strategy' do
    use_orm :active_record  

    it "should have valid roles :user and :admin and the role strategy :admin_flag" do      
      root_dir.should have_model :user do |clazz|
        clazz.should have_valid_roles :user, :admin
        clazz.should have_role_strategy :admin_flag
      end
    end
  end  
</pre>

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Kristian Mandrup. See LICENSE for details.
