## pushpop-github

Github API integration for [Pushpop](https://github.com/keenlabs/pushpop).

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

Here's a simple that job defines a `github` step, setting a `user` and `repository`:

``` ruby
require 'pushpop-github'

job do

  github do
    user       'keenlabs'
    repository 'pushpop'
  end

  step do |repository, _|
    puts "keenlabs/pushpop has #{repository.stargazers_count} stars!"
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
  "full_name": "keenlabs/pushpop",
  "owner": {
    "login": "keenlabs",
    "id": 1315418,
    "avatar_url": "https://avatars.githubusercontent.com/u/1315418?",
    "gravatar_id": "b948c4bc2de9618c488431612d2ff99d",
    "url": "https://api.github.com/users/keenlabs",
    "html_url": "https://github.com/keenlabs",
    "followers_url": "https://api.github.com/users/keenlabs/followers",
    "following_url": "https://api.github.com/users/keenlabs/following{/other_user}",
    "gists_url": "https://api.github.com/users/keenlabs/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/keenlabs/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/keenlabs/subscriptions",
    "organizations_url": "https://api.github.com/users/keenlabs/orgs",
    "repos_url": "https://api.github.com/users/keenlabs/repos",
    "events_url": "https://api.github.com/users/keenlabs/events{/privacy}",
    "received_events_url": "https://api.github.com/users/keenlabs/received_events",
    "type": "Organization",
    "site_admin": false
  },
  "private": false,
  "html_url": "https://github.com/keenlabs/pushpop",
  "description": "Send alerts and recurring reports based on Keen IO events",
  "fork": false,
  "url": "https://api.github.com/repos/keenlabs/pushpop",
  "forks_url": "https://api.github.com/repos/keenlabs/pushpop/forks",
  "keys_url": "https://api.github.com/repos/keenlabs/pushpop/keys{/key_id}",
  "collaborators_url": "https://api.github.com/repos/keenlabs/pushpop/collaborators{/collaborator}",
  "teams_url": "https://api.github.com/repos/keenlabs/pushpop/teams",
  "hooks_url": "https://api.github.com/repos/keenlabs/pushpop/hooks",
  "issue_events_url": "https://api.github.com/repos/keenlabs/pushpop/issues/events{/number}",
  "events_url": "https://api.github.com/repos/keenlabs/pushpop/events",
  "assignees_url": "https://api.github.com/repos/keenlabs/pushpop/assignees{/user}",
  "branches_url": "https://api.github.com/repos/keenlabs/pushpop/branches{/branch}",
  "tags_url": "https://api.github.com/repos/keenlabs/pushpop/tags",
  "blobs_url": "https://api.github.com/repos/keenlabs/pushpop/git/blobs{/sha}",
  "git_tags_url": "https://api.github.com/repos/keenlabs/pushpop/git/tags{/sha}",
  "git_refs_url": "https://api.github.com/repos/keenlabs/pushpop/git/refs{/sha}",
  "trees_url": "https://api.github.com/repos/keenlabs/pushpop/git/trees{/sha}",
  "statuses_url": "https://api.github.com/repos/keenlabs/pushpop/statuses/{sha}",
  "languages_url": "https://api.github.com/repos/keenlabs/pushpop/languages",
  "stargazers_url": "https://api.github.com/repos/keenlabs/pushpop/stargazers",
  "contributors_url": "https://api.github.com/repos/keenlabs/pushpop/contributors",
  "subscribers_url": "https://api.github.com/repos/keenlabs/pushpop/subscribers",
  "subscription_url": "https://api.github.com/repos/keenlabs/pushpop/subscription",
  "commits_url": "https://api.github.com/repos/keenlabs/pushpop/commits{/sha}",
  "git_commits_url": "https://api.github.com/repos/keenlabs/pushpop/git/commits{/sha}",
  "comments_url": "https://api.github.com/repos/keenlabs/pushpop/comments{/number}",
  "issue_comment_url": "https://api.github.com/repos/keenlabs/pushpop/issues/comments/{number}",
  "contents_url": "https://api.github.com/repos/keenlabs/pushpop/contents/{+path}",
  "compare_url": "https://api.github.com/repos/keenlabs/pushpop/compare/{base}...{head}",
  "merges_url": "https://api.github.com/repos/keenlabs/pushpop/merges",
  "archive_url": "https://api.github.com/repos/keenlabs/pushpop/{archive_format}{/ref}",
  "downloads_url": "https://api.github.com/repos/keenlabs/pushpop/downloads",
  "issues_url": "https://api.github.com/repos/keenlabs/pushpop/issues{/number}",
  "pulls_url": "https://api.github.com/repos/keenlabs/pushpop/pulls{/number}",
  "milestones_url": "https://api.github.com/repos/keenlabs/pushpop/milestones{/number}",
  "notifications_url": "https://api.github.com/repos/keenlabs/pushpop/notifications{?since,all,participating}",
  "labels_url": "https://api.github.com/repos/keenlabs/pushpop/labels{/name}",
  "releases_url": "https://api.github.com/repos/keenlabs/pushpop/releases{/id}",
  "created_at": "2014-03-30T19:57:28Z",
  "updated_at": "2014-06-09T06:15:31Z",
  "pushed_at": "2014-05-22T00:54:09Z",
  "git_url": "git://github.com/keenlabs/pushpop.git",
  "ssh_url": "git@github.com:keenlabs/pushpop.git",
  "clone_url": "https://github.com/keenlabs/pushpop.git",
  "svn_url": "https://github.com/keenlabs/pushpop",
  "homepage": "",
  "size": 896,
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
    "login": "keenlabs",
    "id": 1315418,
    "avatar_url": "https://avatars.githubusercontent.com/u/1315418?",
    "gravatar_id": "b948c4bc2de9618c488431612d2ff99d",
    "url": "https://api.github.com/users/keenlabs",
    "html_url": "https://github.com/keenlabs",
    "followers_url": "https://api.github.com/users/keenlabs/followers",
    "following_url": "https://api.github.com/users/keenlabs/following{/other_user}",
    "gists_url": "https://api.github.com/users/keenlabs/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/keenlabs/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/keenlabs/subscriptions",
    "organizations_url": "https://api.github.com/users/keenlabs/orgs",
    "repos_url": "https://api.github.com/users/keenlabs/repos",
    "events_url": "https://api.github.com/users/keenlabs/events{/privacy}",
    "received_events_url": "https://api.github.com/users/keenlabs/received_events",
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
repository.owner.url      #=> "https://api.github.com/users/keenlabs"
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
