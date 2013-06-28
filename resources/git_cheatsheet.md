## Git Cheatsheet

create a git repo

```bash
~/code/project $ git init
```

add a file to the repo

```bash
~/code/project $ git add filename
```

add all files to a repo

```bash
~/code/project $ git add .
```

make a commit

```bash
~/code/project $ git commit -m 'commit message'
```

see commits

```bash
~/code/project $ git log
```

add a remote github repo

```bash
~/code/project $ git remote add origin https://github.com/username/git_repo_name.git
```

push to github

```bash
~/code/project $ git push origin master
```

create and switch to a new branch

```bash
~/code/project $ git checkout -b new_branch_name
```

switch branches

```bash
~/code/project $ git checkout branch_name
```

delete branch

```bash
~/code/project $ git branch -d branch_name
```

merge a branch

```bash
~/code/project $ git merge branch_name
```

check status

```bash
~/code/project $ git status
```