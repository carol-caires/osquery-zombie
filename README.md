# osquery-zombie

Using osquery to find zombie processes and kill it.

1. Build Dockerfile: `docker build -t osquery .`
2. Run container: `docker run -it osquery /bin/bash`
3. Run ./zombie inside /tmp folder to create the zombie process that will run for 60 seconds.
4. Open a new bash, run `osqueryi` and run the following query: `SELECT pid, name, state, on_disk, start_time, parent FROM processes WHERE state = 'Z';`.
5. Kill it.