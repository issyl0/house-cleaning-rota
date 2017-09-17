# Because we have jobs as an array, keep the jobs list and the
# assigning together for ease of editing later if required.

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
