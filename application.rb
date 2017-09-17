require 'sinatra'
require 'active_support/time'

require './lib/calculate_week'
require './lib/assign_jobs_per_week'

before do
  current_week_commencing = Date.today.beginning_of_week(:sunday).strftime('%d/%m/%Y')
  @week = calculate_week(current_week_commencing)
  assign_jobs_per_week # Returns `@person_week_n` variables.
end

get '/' do
  erb :index
end

get '/week.json' do
  { week: @week }.to_json
end

get '/jobs.json' do
  if @week == 'A'
    { jack: @jack_week_a.join(', '), phil: @phil_week_a.join(', '), isabell: @isabell_week_a.join(', ') }.to_json
  elsif @week == 'B'
    { jack: @jack_week_b.join(', '), phil: @phil_week_b.join(', '), isabell: @isabell_week_b.join(', ') }.to_json
  elsif @week == 'C'
    { jack: @jack_week_c.join(', '), phil: @phil_week_c.join(', '), isabell: @isabell_week_c.join(', ') }.to_json
  end
end

