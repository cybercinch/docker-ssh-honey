#!/bin/ash

# Set Timezone if defined
if [[ -z "${TZ}" ]]; then
  ln -sf ${TZ} /etc/localtime
fi
ssh-honeypot -r /ssh-honeypot/ssh-honeypot.rsa -p 22 -u nobody
echo "SSH Honeypot is Running..."
exec "$@"
