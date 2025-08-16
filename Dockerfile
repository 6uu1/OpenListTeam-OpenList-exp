# Use the All-In-One image which includes ffmpeg and aria2
FROM openlistteam/openlist:latest-aio

# The base image already exposes port 5244 and sets up the necessary user and volumes.
# The default command is handled by the entrypoint script in the base image.

# For Render deployment, you should:
# 1. Set the "Docker" runtime in your Render service.
# 2. Create a "Disk" for persistent storage and set the mount path to /opt/openlist/data.
# 3. You do not need to specify a start command, as the base image provides a default.
#
# To use an external database (e.g., from Aiven), set the following environment
# variables in your Render service:
# - DB_TYPE: mysql or postgres
# - DB_HOST: Your database host
# - DB_PORT: Your database port
# - DB_USER: Your database user
# - DB_PASS: Your database password
# - DB_NAME: Your database name
# - DB_SSL_MODE: Your database SSL mode