# Use official CTFd image
FROM ctfd/ctfd:latest

# Copy your backup into the container
COPY breach_and_balance_backup.tar.gz /data/backup.tar.gz

# Restore the backup when the container starts
CMD tar -xzf /data/backup.tar.gz -C /var/ctfd/CTFd/ && \
    exec /opt/CTFd/docker-entrypoint.sh
