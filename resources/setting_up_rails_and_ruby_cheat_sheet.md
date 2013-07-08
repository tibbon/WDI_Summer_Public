#Setting up your environment to run Ruby 1.9.3 and Rails 3.2.13

Show installed versions of ruby

```bash
$ rvm list
```

Install 1.9.3

```bash
$ rvm install 1.9.3
```

Use and set 1.9.3 as the default

```bash
$ rvm --default use 1.9.3
```

Check installed versions of Rails

```bash
$ gem list rails
```

__We want to use Rails 3.2.13.__

If you have Rails 4 installed here is how to remove it.

```bash
$ gem uninstall rails
```

You'll be prompted to select which Rails to uninstall.
Remove any version of rails that's not 3.2.13

Then you'll need to remove railties

```bash
$ gem uninstall railties
```

Remove any version that's not 3.2.13

