# New member onboarding

Welcome to the Bonham Lab at Tufts Medical Center!

This is a non-exhaustive guide to getting started
over the first week or two.
Many more details will be included in your first
periodic meetings with Kevin.

## New member form

New members should start by filling out [this form][new-labmember].
This will get the ball rolling on everything else.

If you will need an account on the HPC,
be sure to check the HPC box so that Kevin
can get that paperwork started.

[new-labmember]: https://baserow.io/form/c8xNEibNpemn-cbZiKnuliYVcrQ9M2w_0rNuCfsC6W4

## Github account

If you don't already have one,
you should create a [github account here][github-newuser].

Bookmark the [lab code page](/protocols/code)
and start to familiarize yourself with the lab workflow.
Especially if you are new to coding,
most of it won't make sense,
learning this stuff is a journey,
and it requires lots of practice, so don't try to memorize it or anything.

[github-newuser]: https://github.com/signup

Once you have filled out your new user form,
Kevin will add you to the [lab github organization][lab-github].

[lab-github]: https://github.com/BonhamLab

### Trainee repository

You will keep track of goals, projects,
and weekly meetings in your trainee repository.
To do this, create a new repository
using the [trainee template][trainee-template].

Follow the instructions in the README
to set it up.
If you run into problems, don't worry!
Kevin or another lab member will help you
in the first couple of weeks,
and you'll be a pro in no time!

[trainee-template]: #

## Zulip account

The lab uses [zulip] to communicate.
Zulip is a bit like slack,
but uses a threaded conversation model.

Notifications are quite customizable,
and you are never expected to respond outside of normal working hours.
Please set notifications
in a way that works best for you -
if Kevin or anyone else sends a message outside of normal business hours,
they should not expect a response until the following day.
Be assured that Kevin has aggressively curated his notifications 😉.

[zulip]: https://bonhamlab.zulipchat.com/

## Getting access to the Tufts HPC
You will get an email from `aff-account@tufts.edu` 
asking you to set up your Tufts account. Following the instructions in this email, you should 

- [ ] Reset your Tufts password
- [ ] Follow instructions to set up Duo Security
- [ ] Set up your VPN connection with Cisco AnyConnect

Once all of these steps have been completed, you can connect to the HPC through the terminal with your new tufts username:
`ssh TUFTS_USERNAME@login.pax.tufts.edu`. You must be connected to the Tufts VPN for this to work.

You will get a message saying:
```
The authenticity of host 'login.pax.tufts.edu (XX.XXX.XXX.XX)' can't be established.
ED25519 key fingerprint is SHA256:someLongFingerprint.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```



- Enter ‘yes’ when you are asked if you want to keep connecting. This will trust the server from now on and add `login.pax.tufts.edu` to the list of known hosts in `~/.ssh/known_hosts/`. You won't get this prompt again. 

#### Setting up passwordless HPC connection
Set up a  SSH key-based authentication so you don't need to enter your Tufts password each time you connect to the Tufts HPC

1. Generate an SSH key pair:
- `ssh-keygen -t ed25519 -C tufts_email@tufts.edu`
- Press "enter" to save the key at `/Users/local_username/.ssh/id_ed25519`
- This creates:
    - `~/.ssh/id_ed25519` (private key — keep safe)
    - `~/.ssh/id_ed25519.pub` (public key — to be shared with servers)

> [!WARNING]  
> Anyone with access to your private key can sign in as you with all of your privileges.
> Do not share with anyone, or upload the key to anywhere that others have access to.

2. Copy your public key to the HPC login node
- `ssh-copy-id tufts_username@login.pax.tufts.edu`
- After entering your password again, this will append your public key to the file `~/.ssh/authorized_keys` on the HPC server
<br>
<br>

You can test if this works by entering `ssh tufts_username@login.pax.tufts.edu`

#### Setting up `~/.ssh/config`
To simplify things even further, you can set up a `~/.ssh/config` file so that you can use access the Tufts HPC by simply typing `ssh tufts-hpc`. 

1. If you don't already have a `~/.ssh/config` file, create one by typing `nano ~/.ssh/config`. Then, add the following information into the file.
```
Host tufts-hpc
    HostName login.pax.tufts.edu
    User tufts_username
    IdentityFile ~/.ssh/id_ed25519
    Port 22
```
2. To make sure that no one can access this file except for you, run `chmod 600 ~/.ssh/config`. 

3. Once the file has been saved, you can type `ssh tufts-hpc`

4. To exit the cluster, type `exit`.


#### Helpful directories on the cluster
Once you have access to the Tufts HPC, you can access your personal directory within the Bonham Lab folder at `/cluster/tufts/bonhamlab`. This is a good place to store data/results for personal projects.
- The shared bin (`/cluster/tufts/bonhamlab/shared/`) also contains helpful directories with conda environments, apptainer containers, bioinformatics tools (`bin`) and biobakery databases ( `databases`)

Troubleshooting:
- Some other lab members received a Tufts username and email, but an HPC account was not created for them. If your newly created Tufts password does not allow you to connect to the HPC, this could be something to check.
<br>
<br>

> Please reach out to Kevin if you have any questions as you complete this set of steps. If there are additional onboarding items that are not listed here, please do not hesitate to make a branch of the LabWebsite repository and submit a pull-request with an update!

