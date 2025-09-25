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

##  Using Tufts high-performance computing (HPC) cluster

For detailed guidelines regarding Tufts HPC usage please visit [the dedicated website](https://it.tufts.edu/high-performance-computing)

## "Linking" your Jupyter notebook to a cluster's compute node

1. ssh into the cluster:
   
   ```bash
   ssh your_name@login.cluster.edu
   ```

2. Request access to an interactive compute node and its resources:

   CPU:

   ```bash
   srun -t 0-02:00 --mem 2000 -p interactive --pty bash
   ```

   GPU:

   ```bash
     srun -t 0-02:00 --mem 2000 -p gpu --gres gpu --pty bash
   ```

This gives a 2-hour time limit interactive session with a bash terminal, with 2GB of memory.
You can adjust the -t or the -mem requests as needed.

### Requesting specific types of gpus:

Use the `--gres` option for either srun or sbatch commands

General syntax: `--gres=gpu[:type][:number]`. Specifying either type or number is optional.

For example:

- A100 gpu: `--gres gpu:a100`
- V100 gpu: `--gres gpu:v100`
- T4 gpu: `--gres gpu:t4`
- RTX 6000 gpu: `--gres gpu:rtx_6000`
- RTX A6000 gpu: `--gres gpu:rtx_a6000`

See [GPU Hardware List](https://www.cs.tufts.edu/cs/152L3D/2024f/tufts_hpc_setup.html#gpu-hardware-list)

3. Activating your conda environment and launching Jupyter notebook on a specific port:

   ```bash
   conda activate <ENV>
   jupyter notebook --no-browser --port=<PORT>
   ```

   >[!NOTE]
   after you've launched Jupyter, in the output you will see something like:
   `.../localhost:6789/tree?token=<TOKEN>`
   You need to copy the <TOKEN> for this session; you will need it later.

4. Tunneling the remote HPC port to your local machine port:
   After you have entered the "srun" command, you will be allocated a certain node.
   Now, go to the terminal on your local machine and enter the following:


   First, tunnel the port you bound Jupyter to (f.e. 6789) to some port on your local machine:
   
   ```bash
   ssh your_name@login.cluster.edu -L <JUPYTER-PORT>:localhost:<PORT>
   # for example
   # ssh yehor@login.cluster.edu -L 6789:localhost:6789
   ```

   Now, do the same for the compute node you were allocated (f.e. i2cmp003):
   ```bash
   ssh <NODE> -L <JUPYTER-PORT>:localhost:<PORT>
   # for example
   # ssh i2cmp003 -L 6789:localhost:6789
   ```

5. Opening Jupyter in the browser
   Go to an internet browser on your machine and look up the following address:
   `http://localhost:<PORT>` (again, you may use 6789 as the port number throughout the process)
   Now, enter the token you copied in the cluster terminal
   as well as some password you need to come up with for this session only.
   Done. Now do science.
