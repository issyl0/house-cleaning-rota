require 'assign_jobs_per_week'
require 'pry'

RSpec.describe 'assign_jobs_per_week' do

  before(:each) do
    assign_jobs_per_week
  end

  it 'should list Isabell\'s jobs for week A' do
    expect(instance_variable_get(:@isabell_week_a)).to include("garden")
  end

  it 'should list Jack\'s jobs for week A' do
    expect(instance_variable_get(:@jack_week_a)).to include("hoover and mop kitchen floor")
  end

  it 'should list Phil\'s jobs for week A' do
    expect(instance_variable_get(:@phil_week_a)).to include("empty lounge bin")
  end

  it 'should list Isabell\'s jobs for week B' do
    expect(instance_variable_get(:@isabell_week_b)).to include("clean bathroom surfaces and mirror")
  end

  it 'should list Jack\'s jobs for week B' do
    expect(instance_variable_get(:@jack_week_b)).to include("clean hobs and sink")
  end

  it 'should list Phil\'s jobs for week B' do
    expect(instance_variable_get(:@phil_week_b)).to include("hoover lounge")
  end

  it 'should list Isabell\'s jobs for week C' do
    expect(instance_variable_get(:@isabell_week_c)).to include("hoover upstairs landing and hoover and mop bathroom floor")
  end

  it 'should list Jack\'s jobs for week C' do
    expect(instance_variable_get(:@jack_week_c)).to include("dust/wipe lounge")
  end

  it 'should list Phil\'s jobs for week C' do
    expect(instance_variable_get(:@phil_week_c)).to include("garden")
  end
end

