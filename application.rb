require 'sinatra'
require 'active_support/time'

WEEK_A = ['10/09/2017', '01/10/2017', '22/10/2017', '12/11/2017', '03/12/2017', '24/12/2017']
WEEK_B = ['17/09/2017', '08/10/2017', '29/10/2017', '19/11/2017', '10/12/2017', '31/12/2017']
WEEK_C = ['24/09/2017', '15/10/2017', '05/11/2017', '26/11/2017', '17/12/2017', '07/01/2018']

before do
  current_week_commencing = Date.today.beginning_of_week(:sunday).strftime('%d/%m/%Y')
  @week = calculate_week(current_week_commencing)
  assign_jobs_per_week
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

def calculate_week(current_week_commencing)
  if WEEK_A.include?(current_week_commencing)
    'A'
  elsif WEEK_B.include?(current_week_commencing)
    'B'
  elsif WEEK_C.include?(current_week_commencing)
    'C'
  else
    '?'
  end
end

def jobs
  [
    'hoover lounge',
    'dust/wipe lounge',
    'empty lounge bin',
    'hoover stairs and landing',
    'hoover and mop porch and downstairs bathroom',
    'clean toilet and sink downstairs',
    'hoover and mop kitchen floor',
    'garden',
    'wipe dining table and sides',
    'clean hobs and sink',
    'clean microwave',
    'empty bins',
    'clean toilet and sink upstairs',
    'clean bath and shower screen',
    'clean bathroom surfaces and mirror',
    'hoover upstairs landing and hoover and mop bathroom floor',
  ]
end

def assign_jobs_per_week
  @jack_week_a = [jobs[0], jobs[3], jobs[4], jobs[6], jobs[15]]
  @jack_week_b = [jobs[7], jobs[8], jobs[9], jobs[10], jobs[11]]
  @jack_week_c = [jobs[1], jobs[3], jobs[5], jobs[12], jobs[13], jobs[14]]

  @phil_week_a = [jobs[1], jobs[2], jobs[5], jobs[12], jobs[13], jobs[14]]
  @phil_week_b = [jobs[0], jobs[3], jobs[4], jobs[6], jobs[15]]
  @phil_week_c = [jobs[7], jobs[8], jobs[9], jobs[10], jobs[11]]

  @isabell_week_a = [jobs[7], jobs[8], jobs[9], jobs[10], jobs[11]]
  @isabell_week_b = [jobs[1], jobs[2], jobs[5], jobs[12], jobs[13], jobs[14]]
  @isabell_week_c = [jobs[0], jobs[3], jobs[4], jobs[6], jobs[15]]
end
