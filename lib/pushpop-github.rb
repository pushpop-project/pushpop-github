require 'pushpop'
require 'github_api'

module Pushpop

  class Github < Step

    PLUGIN_NAME = 'github'

    Pushpop::Job.register_plugin(PLUGIN_NAME, self)

    attr_accessor :_user
    attr_accessor :_repository

    def run(last_response=nil, step_responses=nil)
      self.configure(last_response, step_responses)

      if self._user && self._repository
        get_repository_from_api
      else
        raise 'Please set user and repository fields'
      end
    end

    def user(user)
      self._user = user
    end

    def repository(repository)
      self._repository = repository
    end

    def get_repository_from_api
      ::Github::Repos.new(:user => self._user, :repo => self._repository).get
    end

    def configure(last_response=nil, step_responses=nil)
      self.instance_exec(last_response, step_responses, &block)
    end

  end

end
