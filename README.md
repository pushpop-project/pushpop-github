## pushpop-github

[![Build Status](https://travis-ci.org/pushpop-project/pushpop-github.svg)](https://travis-ci.org/pushpop-project/pushpop-github)

Github API integration for [Pushpop](https://github.com/pushpop-project/pushpop).

### Installation

Add the `pushpop-github` gem to your Gemfile:

``` ruby
gem 'pushpop-github'
```

or install it locally:

``` shell
$ gem install pushpop-github
```

### Usage

Here's a simple job that defines a `github` step, setting a `user` and `repository`:

``` ruby
require 'pushpop-github'

job do

  github do
    user       'pushpop-project'
    repository 'pushpop'
  end

  step do |repository, _|
    puts "pushpop-project/pushpop has #{repository.stargazers_count} stars!"
  end

end
```

The `github` step pulls repository information from the Github API and passes it on to
the next step.

##### Repository fields

Here's what repository data looks like, using the main Pushpop repository as an example:

``` json
{
  "id": 18272447,
  "name": "pushpop",
  "full_name": "pushpop-project/pushpop",
  "owner": {
    "login": "pushpop-project",
    "id": 7890841,
    "avatar_url": "https://avatars.githubusercontent.com/u/7890841?",
    "gravatar_id": null,
    "url": "https://api.github.com/users/pushpop-project",
    "html_url": "https://github.com/pushpop-project",
    "followers_url": "https://api.github.com/users/pushpop-project/followers",
    "following_url": "https://api.github.com/users/pushpop-project/following{/other_user}",
    "gists_url": "https://api.github.com/users/pushpop-project/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/pushpop-project/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/pushpop-project/subscriptions",
    "organizations_url": "https://api.github.com/users/pushpop-project/orgs",
    "repos_url": "https://api.github.com/users/pushpop-project/repos",
    "events_url": "https://api.github.com/users/pushpop-project/events{/privacy}",
    "received_events_url": "https://api.github.com/users/pushpop-project/received_events",
    "type": "Organization",
    "site_admin": false
  },
  "private": false,
  "html_url": "https://github.com/pushpop-project/pushpop",
  "description": "Send alerts and recurring reports based on Keen IO events",
  "fork": false,
  "url": "https://api.github.com/repos/pushpop-project/pushpop",
  "forks_url": "https://api.github.com/repos/pushpop-project/pushpop/forks",
  "keys_url": "https://api.github.com/repos/pushpop-project/pushpop/keys{/key_id}",
  "collaborators_url": "https://api.github.com/repos/pushpop-project/pushpop/collaborators{/collaborator}",
  "teams_url": "https://api.github.com/repos/pushpop-project/pushpop/teams",
  "hooks_url": "https://api.github.com/repos/pushpop-project/pushpop/hooks",
  "issue_events_url": "https://api.github.com/repos/pushpop-project/pushpop/issues/events{/number}",
  "events_url": "https://api.github.com/repos/pushpop-project/pushpop/events",
  "assignees_url": "https://api.github.com/repos/pushpop-project/pushpop/assignees{/user}",
  "branches_url": "https://api.github.com/repos/pushpop-project/pushpop/branches{/branch}",
  "tags_url": "https://api.github.com/repos/pushpop-project/pushpop/tags",
  "blobs_url": "https://api.github.com/repos/pushpop-project/pushpop/git/blobs{/sha}",
  "git_tags_url": "https://api.github.com/repos/pushpop-project/pushpop/git/tags{/sha}",
  "git_refs_url": "https://api.github.com/repos/pushpop-project/pushpop/git/refs{/sha}",
  "trees_url": "https://api.github.com/repos/pushpop-project/pushpop/git/trees{/sha}",
  "statuses_url": "https://api.github.com/repos/pushpop-project/pushpop/statuses/{sha}",
  "languages_url": "https://api.github.com/repos/pushpop-project/pushpop/languages",
  "stargazers_url": "https://api.github.com/repos/pushpop-project/pushpop/stargazers",
  "contributors_url": "https://api.github.com/repos/pushpop-project/pushpop/contributors",
  "subscribers_url": "https://api.github.com/repos/pushpop-project/pushpop/subscribers",
  "subscription_url": "https://api.github.com/repos/pushpop-project/pushpop/subscription",
  "commits_url": "https://api.github.com/repos/pushpop-project/pushpop/commits{/sha}",
  "git_commits_url": "https://api.github.com/repos/pushpop-project/pushpop/git/commits{/sha}",
  "comments_url": "https://api.github.com/repos/pushpop-project/pushpop/comments{/number}",
  "issue_comment_url": "https://api.github.com/repos/pushpop-project/pushpop/issues/comments/{number}",
  "contents_url": "https://api.github.com/repos/pushpop-project/pushpop/contents/{+path}",
  "compare_url": "https://api.github.com/repos/pushpop-project/pushpop/compare/{base}...{head}",
  "merges_url": "https://api.github.com/repos/pushpop-project/pushpop/merges",
  "archive_url": "https://api.github.com/repos/pushpop-project/pushpop/{archive_format}{/ref}",
  "downloads_url": "https://api.github.com/repos/pushpop-project/pushpop/downloads",
  "issues_url": "https://api.github.com/repos/pushpop-project/pushpop/issues{/number}",
  "pulls_url": "https://api.github.com/repos/pushpop-project/pushpop/pulls{/number}",
  "milestones_url": "https://api.github.com/repos/pushpop-project/pushpop/milestones{/number}",
  "notifications_url": "https://api.github.com/repos/pushpop-project/pushpop/notifications{?since,all,participating}",
  "labels_url": "https://api.github.com/repos/pushpop-project/pushpop/labels{/name}",
  "releases_url": "https://api.github.com/repos/pushpop-project/pushpop/releases{/id}",
  "created_at": "2014-03-30T19:57:28Z",
  "updated_at": "2014-06-16T08:05:37Z",
  "pushed_at": "2014-06-16T08:05:38Z",
  "git_url": "git://github.com/pushpop-project/pushpop.git",
  "ssh_url": "git@github.com:pushpop-project/pushpop.git",
  "clone_url": "https://github.com/pushpop-project/pushpop.git",
  "svn_url": "https://github.com/pushpop-project/pushpop",
  "homepage": "",
  "size": 767,
  "stargazers_count": 17,
  "watchers_count": 17,
  "language": "Ruby",
  "has_issues": true,
  "has_downloads": true,
  "has_wiki": true,
  "forks_count": 4,
  "mirror_url": null,
  "open_issues_count": 1,
  "forks": 4,
  "open_issues": 1,
  "watchers": 17,
  "default_branch": "master",
  "organization": {
    "login": "pushpop-project",
    "id": 7890841,
    "avatar_url": "https://avatars.githubusercontent.com/u/7890841?",
    "gravatar_id": null,
    "url": "https://api.github.com/users/pushpop-project",
    "html_url": "https://github.com/pushpop-project",
    "followers_url": "https://api.github.com/users/pushpop-project/followers",
    "following_url": "https://api.github.com/users/pushpop-project/following{/other_user}",
    "gists_url": "https://api.github.com/users/pushpop-project/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/pushpop-project/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/pushpop-project/subscriptions",
    "organizations_url": "https://api.github.com/users/pushpop-project/orgs",
    "repos_url": "https://api.github.com/users/pushpop-project/repos",
    "events_url": "https://api.github.com/users/pushpop-project/events{/privacy}",
    "received_events_url": "https://api.github.com/users/pushpop-project/received_events",
    "type": "Organization",
    "site_admin": false
  },
  "network_count": 4,
  "subscribers_count": 15
}
```
Any of these properties can be accessed by calling the property name on the repository object:

``` ruby
repository.has_downloads  #=> true
repository.owner.url      #=> "https://api.github.com/users/pushpop-project"
```

See the [Github API Documentation](https://developer.github.com/v3) for more information.

### Credits

`pushpop-github` uses the excellent [github_api](https://github.com/peter-murach/github) gem to
communicate with the Github API. It has, like, everything.

### Contributing

Please do! Run the specs with rake:

``` shell
$ bundle exec rake spec
```
