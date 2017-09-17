require_relative 'week_list'

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
