---
layout: default1
description: Notes reguarding DVM zulucrypt
title: dvm-zulucrypt
permalink: /qubes/dvm-zulucrypt
---

Notes on how to setup a disposable zulucrypt instance for USB devices.

<br>

### Prerequesites:

Setup a minimal `kicksecure` template based on [this guide](./#debian-security).

Install the `zulucrypt` package:

``sudo apt install zulucrypt``

If you wish use usb devices, add the `qubes-proxy-usb` package:

``sudo apt install qubes-proxy-usb``

<br>

### Setup

- Create an `AppVM` titled `template-dvm-crypt` with the template created above.

- Net Qube: `(none)`

- In `Advanced`, select `Disposable Template`

- In `Applications` select `zuluCrypt`

<br>

After this, create a new `DisposableVM` titled `dvm-crypt` with the template as `template-dvm-crypt` and networking as `(none)`.