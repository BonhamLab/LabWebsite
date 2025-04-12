+++
title = "Writing and Managing Code"
+++

\toc

Lab code should be version controlled
and hosted on an online repository (probably [github](https://github.com/bonhamlab)).
If you don't know how to do that, read on!

## Using Git

Git is a distributed version control system (DVCS).
Basically, that means that you keep track of your code on whatever system you're working on,
and then merge with whatever other systems need to have the code.
No individual code location needs to be the "source of truth"
(though in practice we can establish one).

The best way to learn git is to use it.
Kevin will push you to use it frequently,
and if you run into problems, try to solve them on your own,
then ask Kevin to help!

In the meantime, this page has some resources to get you started.

- [What is git and github?][redbadger-git] - a description in plain english
- [Learn git][kraken-learn], from gitkraken
- [Kevin's HutLab bonus lab meeting presentation][hutlab-git]

[kraken-learn]: https://www.gitkraken.com/learn/git
[redbadger-git]: https://content.red-badger.com/resources/what-is-git-and-github
[hutlab-git]: https://kescobo.gitlab.io/hutlab-git/tutorial-slides.html

### Glossary

These terms will come up frequently when using git and github,
and are included here as a reference.
A more complete list can be [found here][kraken-glossary]

[kraken-glossary]: https://www.gitkraken.com/learn/git/definitions

- repo (short for repository) - a folder with git super powers
- stage - a new file or a change to an existing file that will be included in the next commit
  (when you `git add $FILE`, then `$FILE` is now staged)
- `add` - include the file or file change in the next commit
- `commit` (verb) - register staged changes to the version history
- commit (noun) - the record of changes from the previous version
- remote - a location different from your current system that the repo also lives.
  This is often on something like github or gitlab, but could just be another one of your computers
  that you can connect to.
  It could even be a different directory on the same computer!
- `push` - move commits from your local repo to a remote.
  If you're not paying attention, this can lead to merge conflicts
  (which is OK! `git` is built to handle this).
- `pull` - move commits from a remote to your local repo.
  If you're not paying attention, this can lead to merge conflicts.
- branch - an alternate history of commits
- merge - join the version history of two branches
- merge conflict - when merging branches that each have changes to the same line(s),
  and user input is required to decide which version to include
- origin - the default name for a remote
- main/master - typical names for the primary branch of a repo
- PR (pull request) - when using `git` social networks (eg github),
  an interface to comment on a branch that could be merged into the `main` branch.
  On gitlab and some other forges, this is called a "merge request" instead
- issue - when using `git` social networks like (eg github),
  an interface to discuss problems, potential features, or other information about a repo.

## Github

### Sign up

If you don't already have a github account,
you can create one [here][github-newuser].
If you already have a github account, it is totally fine to use the same one.
You are also welcome to create a work-specific one,
though it can be complicated to manage multiple users
on your local system.

If you haven't already, be sure to complete the [new lab member form][new-labmember],
and include your github username so that you can be added to lab repos.

[github-newuser]: https://github.com/signup
[new-labmember]: #

### Development workflow

#### Typical workflow

The most common actions in a git repo are to stage and commit changes,
then push them to a remote repository.

1. Edit a file or files. Be sure to save!
2. use `git add $FILE` to stage a file to be committed.
3. use `git commit -m "some informative message about the change(s)"` to create a commit
4. use `git push` to push your commit to the remote.

**NOTES**

- If you have only made changes to files that have been previously tracked,
  you can use `git commit -am "commit message"` to combine stpes 2 and 3.
  This will commit _all_ changes to previously tracked files.
- Generally speaking, shoot for smaller, atomic (self-contained) commits.
  If you've forgotten to commit for a while, use `git diff` to look back through your changes,
  and if possible break them up into smaller commits (and force yourself to write informative commit messages!)
- You don't have to `push` after every commit, but try to make sure to sync up with your remote
  before taking a break or ending for the day.

#### Starting a repository locally

If you are starting a brand new project or repository,
you can simply create a new directory (`mkdir my_project`),
and then inside that directory ()

#### Cloning an existing repository

#### Using branches

#### Submitting pull requests

#### Using issues to track tasks and plans

#### Tagging, releasing, and publishing

## Trainee / Staff Personal Repos

Each student, postdoc, or other staff member
should have a personal repository that will be used to 
plan and keep track conflict progress,
host meeting agendas/notes,
host presentations, etc.

### Getting started from the template

### Periodic meetings

### Posters and presentations


## Project Repositories

Each software or analysis project should have its own repo or repos

##  
