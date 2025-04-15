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

- **repo (short for repository)** - a folder with git super powers
- **stage** - a new file or a change to an existing file that will be included in the next commit
  (when you `git add $FILE`, then `$FILE` is now staged)
- **`add`** - include the file or file change in the next commit
- **`commit` (verb)** - register staged changes to the version history
- **commit (noun)** - the record of changes from the previous version
- **remote** - a location different from your current system that the repo also lives.
  This is often on something like github or gitlab, but could just be another one of your computers
  that you can connect to.
  It could even be a different directory on the same computer!
- **`push`** - move commits from your local repo to a remote.
  If you're not paying attention, this can lead to merge conflicts
  (which is OK! `git` is built to handle this).
- **`pull`** - move commits from a remote to your local repo.
  If you're not paying attention, this can lead to merge conflicts.
- **branch** - an alternate history of commits
- **merge** - join the version history of two branches
- **merge conflict** - when merging branches that each have changes to the same line(s),
  and user input is required to decide which version to include
- **origin** - the default name for a remote
- **main/master** - typical names for the primary branch of a repo
- **PR (pull request)** - when using `git` social networks (eg github),
  an interface to comment on a branch that could be merged into the `main` branch.
  On gitlab and some other forges, this is called a "merge request" instead
- **issue** - when using `git` social networks like (eg github),
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
[new-labmember]: https://baserow.io/form/c8xNEibNpemn-cbZiKnuliYVcrQ9M2w_0rNuCfsC6W4

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
- When you are getting started or working on a project primarily by yourself,
  it is fine to work on the `main` branch.
  But the moment you start collaborating, you will need to [use branches](#using-branches).
  It can be good to practice this habit even when it's not necessary.

#### Starting a repository locally

If you are starting a brand new project or repository,
you can simply create a new directory (`mkdir my_project`),
and then inside that directory (`cd my_project`),
run `git init` to give the directory super powers.

Typically, the first file that you should create is a `README.md`
where you describe the purpose of the repository.
Commit the readme, and you're off to the races!

As soon as is practical, create a remote on github,
and add it as the `origin` remote by copying the URL,
and running `git remote add origin $URL`.
Then `git push -u origin main` will push your local commits
and set `origin` as the default remote, and `main` as the default branch.
For future `push`es, you won't need to add that information.

#### Cloning an existing repository

More often, you will be starting from an existing repository.
If you are starting a new analysis project,
presentation, or poster,
you can also select the appropriate template repository,
and create a new repo on github from the template.
Otherwise, just find the repo, copy the URL,
and run `git clone $URL`.
This will download the project to your local system,
(into a directory the same name as the project)
and set the remote as `origin`.

#### Using branches

In typical software development, 
branches are used to develop specific "features",
typically one feature per branch.
This keeps code that might be affecting other parts of the code base
separate from the main branch until it's working and tested.

If you are working on software in the lab, this is also how we use branches,
but if your repo is an analysis repo,
the analogy breaks down a bit.
Even so, you can and should use branches
to organize work on a particular analysis,
or when you start working on a manuscript or poster.

If nothing else, using a branch makes it easy to start a pull request
(see the next section)
to facilitate discussion of the thing you're working on.

#### Submitting pull requests

Pull requests (PRs) track discussion and code changes
before they are merged to the `main` branch.
They are not a feature of the version control system,
they are a feature of the "social network" layer -
eg. github or gitlab.

Still, PRs are powerful tools for visualizing and organizing
your work, and allow improved discussion and code review
of specific topics.

#### Using issues to track tasks and plans

TODO

#### Tagging, releasing, and publishing

TODO

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
