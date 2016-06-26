# The domain to get a cert for.
# REQUIRED
domain="example.com"

# Extra domains to add to a single SAN cert.
# OPTIONAL.
extra_domains=("www.example.com")

# An email to get renewal info and other stuff from Let's Encrypt.
# REQUIRED.
email="me@example.com"

# A webroot to use just for this domain
# OPTIONAL, defaults to $default_webroot from your main certgen config
webroot="/path/to/webroot"

# The ACME server which will sign your cert.
# OPTIONAL, defaults to https://acme-v01.api.letsencrypt.org/directory
server="https://acme-v01.api.letsencrypt.org/directory"

# Certificate size in bits. Can only be 2048 or 4096.
# OPTIONAL, defaults to 2048.
cert_size=2048

# If you want this cert to be readable by a group other than root, set it here.
# OPTIONAL, defaults to root
group="root"

# Commands to run after this cert has been successfully generated.
# Working directory is $certdir/$domain
# REQUIRED, just run /bin/true if you don't need this.
on_complete() {
    service nginx reload
}
