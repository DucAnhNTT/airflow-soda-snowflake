FROM quay.io/astronomer/astro-runtime:9.1.0

RUN python -m venv soda_venv && source soda_venv/bin/activate && \
    pip install --no-cache-dir --default-timeout=1000 soda-core-snowflake==3.0.50 &&\
    pip install --no-cache-dir --default-timeout=1000 soda-core-scientific==3.0.50 && deactivate
