So, I made a new branch with git switch -c 

Named it "Blake-local-git-clone-nmaahc" which is probably way to much but as I working this out it seemed useful

This GIT_CLONE_NMAAHC repo is only local for me, it is not on my GitHub

If if run "git remote show origin" I get:

	* remote origin
	Fetch URL: https://github.com/DaleLore/GIT_CLONE-NMAAHC.git
	Push  URL: https://github.com/DaleLore/GIT_CLONE-NMAAHC.git
	HEAD branch: main

So, I'm always pushing to your repo.

Why don't I want this on my repo to? That is what "forking" is for? If I understand correctly, "forking" is design for GitHub and "cloning" is to clone a repo not on your own GitHub account to you local machine... why do one over the other?

Would I ever want to fork a repo and then clone it to my local machine? Would the remote origin then   be the repo on my GitHub or still the GitHub account I forked the repo from?

Or, conversely, what if I cloned a repo from you, then pushed it back to my own GitHub page. It is then my own repo?

It is a bit confusing...

For this command "git remote add origin" I remember you explained as add being a bit like a flag. Am I remembering that correctly? I guess I should watch the workshop recording!

But OK.

So I made changes in README.txt and then couldn't push them because your repo was the remote (repo) and it was named origin. So I renamed your repo from origin to DaleLore and now my remote (repo) was DaleLore.

I think tried to add a new remote that would be a repo on my GitHub	and name it origin: git remote add origin https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git 

That didn't work. The repo didn't exist on my GitHub, but I didn't want to get on GitHub and create the repo, I wanted to do in all on the CLI, for whatever reason. 

I tried another way and that didn't work.

I looked at: 
https://gist.github.com/alexpchin/dc91e723d4db5018fef8
https://docs.github.com/en/github/importing-your-projects-to-github/importing-source-code-to-github/adding-an-existing-project-to-github-using-the-command-line
https://devconnected.com/how-to-change-git-remote-origin/

What exactly is an upstream? Just another name for a remote, like origin?
Why do I need an upstream branch? I kept getting:

"/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                              
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈     git push --set-upstream origin Blake-local-git-clone-nmaahc

ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists."

Which was really annoying.

Finally I found this: ≈:≈ curl -u BleakleyMcD https://api.github.com/user/repos -d '{"name":"GIT_CLONE-NMAAHC","private":false}'

At: https://dev.to/bowmanjd/create-and-initialize-a-new-github-repository-from-the-command-line-85e

I had to generate another one of those personal token things, but this actually worked and I was able to create the repository and push to it. 


/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git branch
* Blake-local-git-clone-nmaahc
  main
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ ll
total 0
drwxr-xr-x   4 bleakley  staff   128B Dec 13 16:24 .
drwx------@ 51 bleakley  staff   1.6K Dec 15 12:11 ..
drwxr-xr-x  12 bleakley  staff   384B Dec 15 23:07 .git
-rw-r--r--@  1 bleakley  staff     0B Dec 13 16:24 README.txt
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ open README.txt 
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git status                                                                                                                                    
On branch Blake-local-git-clone-nmaahc
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   README.txt

no changes added to commit (use "git add" and/or "git commit -a")
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git add README.txt 
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git status
On branch Blake-local-git-clone-nmaahc
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   README.txt

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git commit
[Blake-local-git-clone-nmaahc 76950b6] asking a bunch of Q's in the readme
 1 file changed, 24 insertions(+)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc
remote: Permission to DaleLore/GIT_CLONE-NMAAHC.git denied to BleakleyMcD.
fatal: unable to access 'https://github.com/DaleLore/GIT_CLONE-NMAAHC.git/': The requested URL returned error: 403
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                   
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push -u origin master
error: src refspec master does not match any
error: failed to push some refs to 'https://github.com/DaleLore/GIT_CLONE-NMAAHC.git'
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push -u origin main  
remote: Permission to DaleLore/GIT_CLONE-NMAAHC.git denied to BleakleyMcD.
fatal: unable to access 'https://github.com/DaleLore/GIT_CLONE-NMAAHC.git/': The requested URL returned error: 403
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote rename origin DaleLore
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote show origin                                     
fatal: 'origin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote show DaleLore
* remote DaleLore
  Fetch URL: https://github.com/DaleLore/GIT_CLONE-NMAAHC.git
  Push  URL: https://github.com/DaleLore/GIT_CLONE-NMAAHC.git
  HEAD branch: main
  Remote branch:
    main tracked
  Local branch configured for 'git pull':
    main merges with remote main
  Local ref configured for 'git push':
    main pushes to main (up to date)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote add origin https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git 
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote show origin                                                    
remote: Repository not found.
fatal: repository 'https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git/' not found
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote add origin git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git 
error: remote origin already exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote show origin                                                
remote: Repository not found.
fatal: repository 'https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git/' not found
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote -v         
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (fetch)
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (push)
origin	https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git (fetch)
origin	https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git (push)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote remove origin
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote -v           
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (fetch)
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (push)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote add origin git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git 
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote -v                                                         
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (fetch)
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (push)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (fetch)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (push)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc
Warning: Permanently added the ECDSA host key for IP address '140.82.113.4' to the list of known hosts.
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git init
Reinitialized existing Git repository in /Users/bleakley/Desktop/GIT_CLONE-NMAAHC/.git/
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote add origin git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git 
error: remote origin already exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote -v                                                         
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (fetch)
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (push)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (fetch)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (push)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                              
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈     git push --set-upstream origin Blake-local-git-clone-nmaahc

ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc 

Warning: Permanently added the ECDSA host key for IP address '140.82.112.4' to the list of known hosts.
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ curl -u BleakleyMcD https://api.github.com/user/repos -d '{"name":"GIT_CLONE-NMAAHC","private":false}'
Enter host password for user 'BleakleyMcD':
{
  "message": "Requires authentication",
  "documentation_url": "https://docs.github.com/rest/reference/repos#create-a-repository-for-the-authenticated-user"
}
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git remote -v                                                                                     
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (fetch)
DaleLore	https://github.com/DaleLore/GIT_CLONE-NMAAHC.git (push)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (fetch)
origin	git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git (push)
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                                                          
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc                                           

ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc                                           

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ curl -u BleakleyMcD https://api.github.com/user/repos -d '{"name":"GIT_CLONE-NMAAHC","private":false}'
Enter host password for user 'BleakleyMcD':
{
  "message": "Requires authentication",
  "documentation_url": "https://docs.github.com/rest/reference/repos#create-a-repository-for-the-authenticated-user"
}
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ curl -u BleakleyMcD https://api.github.com/user/repos -d '{"name":"GIT_CLONE-NMAAHC","private":false}'
Enter host password for user 'BleakleyMcD':
{
  "id": 438872359,
  "node_id": "R_kgDOGiipJw",
  "name": "GIT_CLONE-NMAAHC",
  "full_name": "BleakleyMcD/GIT_CLONE-NMAAHC",
  "private": false,
  "owner": {
    "login": "BleakleyMcD",
    "id": 5872785,
    "node_id": "MDQ6VXNlcjU4NzI3ODU=",
    "avatar_url": "https://avatars.githubusercontent.com/u/5872785?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/BleakleyMcD",
    "html_url": "https://github.com/BleakleyMcD",
    "followers_url": "https://api.github.com/users/BleakleyMcD/followers",
    "following_url": "https://api.github.com/users/BleakleyMcD/following{/other_user}",
    "gists_url": "https://api.github.com/users/BleakleyMcD/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/BleakleyMcD/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/BleakleyMcD/subscriptions",
    "organizations_url": "https://api.github.com/users/BleakleyMcD/orgs",
    "repos_url": "https://api.github.com/users/BleakleyMcD/repos",
    "events_url": "https://api.github.com/users/BleakleyMcD/events{/privacy}",
    "received_events_url": "https://api.github.com/users/BleakleyMcD/received_events",
    "type": "User",
    "site_admin": false
  },
  "html_url": "https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC",
  "description": null,
  "fork": false,
  "url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC",
  "forks_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/forks",
  "keys_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/keys{/key_id}",
  "collaborators_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/collaborators{/collaborator}",
  "teams_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/teams",
  "hooks_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/hooks",
  "issue_events_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/issues/events{/number}",
  "events_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/events",
  "assignees_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/assignees{/user}",
  "branches_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/branches{/branch}",
  "tags_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/tags",
  "blobs_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/git/blobs{/sha}",
  "git_tags_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/git/tags{/sha}",
  "git_refs_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/git/refs{/sha}",
  "trees_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/git/trees{/sha}",
  "statuses_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/statuses/{sha}",
  "languages_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/languages",
  "stargazers_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/stargazers",
  "contributors_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/contributors",
  "subscribers_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/subscribers",
  "subscription_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/subscription",
  "commits_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/commits{/sha}",
  "git_commits_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/git/commits{/sha}",
  "comments_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/comments{/number}",
  "issue_comment_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/issues/comments{/number}",
  "contents_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/contents/{+path}",
  "compare_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/compare/{base}...{head}",
  "merges_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/merges",
  "archive_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/{archive_format}{/ref}",
  "downloads_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/downloads",
  "issues_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/issues{/number}",
  "pulls_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/pulls{/number}",
  "milestones_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/milestones{/number}",
  "notifications_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/notifications{?since,all,participating}",
  "labels_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/labels{/name}",
  "releases_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/releases{/id}",
  "deployments_url": "https://api.github.com/repos/BleakleyMcD/GIT_CLONE-NMAAHC/deployments",
  "created_at": "2021-12-16T05:36:43Z",
  "updated_at": "2021-12-16T05:36:43Z",
  "pushed_at": "2021-12-16T05:36:43Z",
  "git_url": "git://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git",
  "ssh_url": "git@github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git",
  "clone_url": "https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC.git",
  "svn_url": "https://github.com/BleakleyMcD/GIT_CLONE-NMAAHC",
  "homepage": null,
  "size": 0,
  "stargazers_count": 0,
  "watchers_count": 0,
  "language": null,
  "has_issues": true,
  "has_projects": true,
  "has_downloads": true,
  "has_wiki": true,
  "has_pages": false,
  "forks_count": 0,
  "mirror_url": null,
  "archived": false,
  "disabled": false,
  "open_issues_count": 0,
  "license": null,
  "allow_forking": true,
  "is_template": false,
  "topics": [

  ],
  "visibility": "public",
  "forks": 0,
  "open_issues": 0,
  "watchers": 0,
  "default_branch": "main",
  "permissions": {
    "admin": true,
    "maintain": true,
    "push": true,
    "triage": true,
    "pull": true
  },
  "allow_squash_merge": true,
  "allow_merge_commit": true,
  "allow_rebase_merge": true,
  "allow_auto_merge": false,
  "delete_branch_on_merge": false,
  "allow_update_branch": false,
  "network_count": 0,
  "subscribers_count": 0
}
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                                                              
fatal: The current branch Blake-local-git-clone-nmaahc has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin Blake-local-git-clone-nmaahc

                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push --set-upstream origin Blake-local-git-clone-nmaahc                                           

Warning: Permanently added the ECDSA host key for IP address '140.82.112.3' to the list of known hosts.
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 1.04 KiB | 533.00 KiB/s, done.
Total 6 (delta 0), reused 3 (delta 0), pack-reused 0
To github.com:BleakleyMcD/GIT_CLONE-NMAAHC.git
 * [new branch]      Blake-local-git-clone-nmaahc -> Blake-local-git-clone-nmaahc
Branch 'Blake-local-git-clone-nmaahc' set up to track remote branch 'Blake-local-git-clone-nmaahc' from 'origin'.
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ git push                                                   
Everything up-to-date
                                                                                                                                                         
/Users/bleakley/Desktop/GIT_CLONE-NMAAHC
≈:≈ 
