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
