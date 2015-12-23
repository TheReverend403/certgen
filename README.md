certgen
=======
A simple wrapper around [simp_le](https://github.com/kuba/simp_le)

WARNING: This is a tool for advanced users who know their way around Linux. It is NOT intended to be newbie friendly.

# Installation

* Install [simp_le](https://github.com/kuba/simp_le)
* Copy `src/certgen` to `/usr/bin/`
* Run `certgen` once to create the necessary directories.
* Copy `src/configs/config` to `/etc/certgen/` and edit the values within. Make sure `simp_le_dir` points to your simp_le installation.
* Copy `src/configs/example.com` to `/etc/certgen/conf.d/whatever.yourdomain.com` and edit the values within.
* Finally, run `certgen` again to create your Let's Encrypt certificate.

Optionally, you can also run `certgen` as a cronjob. simp_le will not renew your certs or even contact Let's Encrypt servers unless your certificate is at least 30 days (by default) from expiry, so it's safe to run it as often as you want.
