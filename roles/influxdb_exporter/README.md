# InfluxDB exporter
Installs [influxdb_exporter](https://github.com/prometheus/influxdb_exporter) from source on Centos.

## Usage with proxmox
/etc/pve/status.cfg:
```
influxdb:
  server <influxdb_exporter_ip>
  port 9122
```
