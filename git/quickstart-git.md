# Quick Start for Git
There are so many things to do with git that I always forget. And have to repeat them surprisingly often. Here is a start to collecting notes.

## Don't type password everytime! Authenticate with ssh
You can authenticate your account when interacting with github in two ways- HTTPS and SSH.

HTTPS uses a username + token sent over an encrypted web connection. Git prompts for those credentials every time (unless saved in a cred manager).

SSH uses a keypair: a private key on your machine and a public key stored on GitHub. GitHub verifies that the keys match, so no passwords or tokens are needed during normal use.

Practically:
HTTPS = works everywhere but prompts unless cached.
SSH = one-time setup, then seamless pulls/pushes.
