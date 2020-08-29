---
title: 'Using tmux on mac'
date: 2020-07-03
permalink: /posts/2020/07/tmux-on-mac/
tags:
  - computing
  - mac
---

Terminal multiplexer software, such as `tmux` and `screen`, is a useful tool. When using `tmux` on mac, I encountered the following error.

```{bash}
$ tmux ls
dyld: Library not loaded: /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib
  Referenced from: /usr/local/opt/libevent/lib/libevent-2.1.6.dylib
  Reason: image not found
Abort trap: 6
```

With a simple Google search, it turned out that this is can be fixed by specifying a proper `openssl` version. With Homebrew command:

```{bash}
brew switch openssl 1.0.2t
Cleaning /usr/local/Cellar/openssl/1.0.2t
Opt link created for /usr/local/Cellar/openssl/1.0.2t
```

This happens once in a while, when I perform an update on brew packages.
