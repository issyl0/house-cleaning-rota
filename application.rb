require 'sinatra'
require 'active_support/time'

WEEK_A = ['10/09/2017', '01/10/2017', '22/10/2017', '12/11/2017', '03/12/2017', '24/12/2017']
WEEK_B = ['17/09/2017', '08/10/2017', '29/10/2017', '19/11/2017', '10/12/2017', '31/12/2017']
WEEK_C = ['24/09/2017', '15/10/2017', '05/11/2017', '26/11/2017', '17/12/2017', '07/01/2018']

before do
  current_week_commencing = Date.today.beginning_of_week(:sunday).strftime('%d/%m/%Y')
  @week = calculate_week(current_week_commencing)
end

get '/' do
  erb :index
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
