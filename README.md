certgen
=======
A simple wrapper around [simp_le](https://github.com/kuba/simp_le)

WARNING: This is a tool for advanced users who know their way around Linux. It is NOT intended to be newbie friendly.

# This tool is for you if...

* You like the simplicity and reasoning behind [simp_le](https://github.com/kuba/simp_le) but you want a slightly higher, but still low-level abstraction.
* You have a lot of domains/subdomains that would simply be too cumbersome to get set up with [simp_le](https://github.com/kuba/simp_le) initially without writing your own script.
* You like the idea of writing a few config files and then not having to worry about the details.
* You like reproducability.

# Installation

* Install [simp_le](https://github.com/kuba/simp_le)
* Copy `src/certgen` to `/usr/bin/`
* Run `certgen` once to create the necessary directories.
* Copy `src/configs/config` to `/etc/certgen/` and edit the values within. Make sure `simp_le_dir` points to your simp_le installation.
* Copy `src/configs/example.com` to `/etc/certgen/conf.d/whatever.yourdomain.com` and edit the values within.
* Finally, run `certgen` again to create your Let's Encrypt certificate.

Optionally, you can also run `certgen` as a cronjob. simp_le will not renew your certs or even contact Let's Encrypt servers unless your certificate is at least 30 days (by default) from expiry, so it's safe to run it as often as you want.

Note: Running `certgen` with no arguments simply loops over all of your site configs and generates certs for them (if needed). If you only want to process certain configs, you can pass the full path to them as parameters to `certgen` like so: `certgen /etc/certgen/conf.d/example.com /etc/certgen/conf.d/example.org`
