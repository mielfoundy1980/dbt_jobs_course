## Automated Job Postings Pipeline (V1) - dbt + DuckDB

![dbt pipeline diagram](images/dbt_pipeline.png)

A public dbt + DuckDB pipepline over 692k real job postings, rebuilt and republished automatically on every push.

- Models the raw postings into tested, documented insights marts
- Publishes the docs site and the finished warehouse -- open to anyone, no credentials
- Runs itself on GitHub Actions: every push and every Monday