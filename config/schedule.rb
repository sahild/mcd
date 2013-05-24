# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
 set :output, "cron_log.log"
 job_type :rake,    "cd :path && RAILS_ENV=development bundle exec rake :task --silent :output"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 2.minutes do
 # rake "trial:bank"
# end

# Learn more: http://github.com/javan/whenever
