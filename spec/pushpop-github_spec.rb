require 'spec_helper'

describe Pushpop::Github do
  it 'should return repository information' do
    step = Pushpop::Github.new do
      user 'pushpop-project'
      repository 'pushpop'
    end
    repo = step.run
    repo.language.should == "Ruby"
  end

  it 'should register as a plugin' do
    github_job = job do
      github do
        user 'pushpop-project'
        repository 'pushpop'
      end
    end
    repo, _ = github_job.run
    repo.language.should == "Ruby"
  end

  it 'should raise an error if repository is not configured' do
    expect {
      step = Pushpop::Github.new do
        user 'pushpop-project'
      end
      step.run
    }.to raise_error /Please set/
  end

  it 'should raise an error if user is not configured' do
    expect {
      step = Pushpop::Github.new do
        repository 'pushpop'
      end
      step.run
    }.to raise_error /Please set/
  end

end
