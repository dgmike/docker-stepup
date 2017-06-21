# Docker StepUp

[StepUp](https://github.com/kawamanza/step-up) is an utility that helps other projects to manage your versioning increase.

You don't need to install `ruby` on your system, you don't need to install `stepup`, you just need `docker`!

```sh
docker run -v $PWD:/app --rm --tty --interactive dgmike/stepup version -n
```

**Tip:** create and alias to the last command and use as original `stepup`.

---

**Atention:** step-up uses interactive shell to run some functions as editor, to `--tty` and `--interactive` (`-ti` shortcut) are mandatory.
