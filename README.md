WDI_Summer_Public
=================

Public links, notes, and code examples for General Assembly's June WDI Class. 

Feel free to suggest changes via [Pull Requests](https://help.github.com/articles/using-pull-requests)

## How To

To get started, fork this repo in Github.

[![How to fork this repo](https://github-images.s3.amazonaws.com/help/Bootcamp-Fork.png)](https://github.com/tibbon/WDI_Summer_Public/fork)

Clone the repo from your account: 

```
git clone https://github.com/YOUR-USERNAME/WDI_Summer_Public.git
# Clones your fork of the repository into the current directory in terminal, with your username
```

Configure this primary repo as a remote


```
cd WDI_Summer_Public
# Changes the active directory in the prompt to the newly cloned "WDI_Summer_Public" directory
git remote add upstream https://github.com/tibbon/WDI_Summer_Public.git
# Assigns the original repository to a remote called "upstream"
```

Update your local repo with changes from this one with:
```
git fetch upstream
# Pulls in changes not present in your local repository, without modifying your files
git merge upstream/master
# Merges any changes fetched into your working files
git push origin master
# Then push everything up to YOUR github repository
```

To make contributions:
```
git add .
git commit -m "Description of change made"
git push origin master
```
And then issue a [Pull Request](https://help.github.com/articles/using-pull-requests) from Github. 
