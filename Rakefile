begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "roles-spec"
    gem.summary = %Q{RSpec matchers for roles}
    gem.description = %Q{Spec that your User model files apply role strategies as expected}
    gem.email = "kmandrup@gmail.com"
    gem.homepage = "http://github.com/kristianmandrup/roles-spec"
    gem.authors = ["Kristian Mandrup"]
    gem.add_dependency "rspec",             "~> 2.0.0.beta.22"
    gem.add_dependency "require_all",       "~> 1.1.0"
    gem.add_dependency "rails-app-spec",    "~> 0.2.9"
    gem.add_dependency "rails3_artifactor", "~> 0.2.2"
    gem.add_dependency "code-spec",         "~> 0.2.3" 
    gem.add_dependency "activesupport",     "~> 3.0.0"       

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

