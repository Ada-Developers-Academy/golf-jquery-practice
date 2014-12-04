# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require "resque/tasks"
task "resque:setup" => :environment

namespace :api do
  task :test => [:environment] do
    puts "Creating file..."
    File.open("clubs.txt", "w") do |file|
      Club.all.each do |club|
        file << club.name + "\n"
      end
    end
  end
end
