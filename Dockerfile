# Use an official Debian base image
FROM debian:latest

# Set environment variables to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools for working with .deb and .rpm packages
RUN apt-get update && \
    apt-get install -y \
    dpkg \
    rpm \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Copy the .deb or .rpm file and the script into the container
COPY count_files.sh /usr/local/bin/count_files.sh
COPY count_files_deb.deb /tmp/count_files_deb.deb

# Install the .deb package (for example, count_files_deb.deb)
RUN dpkg -i /tmp/count_files_deb.deb || apt-get install -f -y

# Set the script as executable
RUN chmod +x /usr/local/bin/count_files.sh

# Run the script when the container starts
CMD ["/usr/local/bin/count_files.sh"]

