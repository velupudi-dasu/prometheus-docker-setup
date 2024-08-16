# Use the official Prometheus base image
FROM prom/prometheus:v2.46.0

# Set the working directory
WORKDIR /etc/prometheus

# Copy the custom Prometheus configuration file into the container
COPY prometheus.yml /etc/prometheus/

# Expose the default Prometheus port
EXPOSE 9090

# Start Prometheus with the custom configuration file
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
