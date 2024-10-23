#!/usr/bin/env bash
service ssh start
echo "root:$PW" | chpasswd
# JUPPW=$(python -c "from jupyter_server.auth import passwd;print(passwd('$PW'))")
# nohup jupyter notebook --ip=0.0.0.0 --ServerApp.root_dir=/root --allow-root --PasswordIdentityProvider.hashed_password $JUPPW &

exec "$@"
