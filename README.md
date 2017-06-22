# Docker StepUp

[StepUp](https://github.com/kawamanza/step-up) is an utility that helps other projects to manage your versioning increase.

You don't need to install `ruby` on your system, you don't need to install `stepup`, you just need `docker`!

**Atention:** step-up uses interactive shell to run some functions as editor, to `--tty` and `--interactive` (`-ti` shortcut) are mandatory.

Stepup uses git to send some informations to repository, so your git settings need to be mounted as volume to docker image. They are: `$HOME/.ssh` and `$HOME/.gitconfig`.

Mount your current path to `/app` inside the docker image, that is the workspace where the image runs.

```sh
docker run \
  --rm \
  --tty \
  --interactive \
  -v $PWD:/app \
  -v $HOME/.ssh:/home/stepup/.ssh \
  -v $HOME/.gitconfig:/home/stepup/.gitconfig \
  dgmike/stepup \
  version -n
```

**Tip:** create and alias to the last command and use as original `stepup`.

In your $HOME/.bashrc put the follow line:

```sh
alias stepup='docker run --rm -v $PWD:/app -v $HOME/.ssh:/home/stepup/.ssh -v $HOME/.gitconfig:/home/stepup/.gitconfig --tty --interactive dgmike/stepup'
```

And, then, use stepup as original application.

```
stepup notes add -m 'created a new feature'
stepup version create
stepup changelog
```

