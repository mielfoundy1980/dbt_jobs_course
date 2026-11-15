SELECT
    job_id,
    job_title,
    company_name,
    job_location,
    job_via,
    job_schedule_type,
    job_work_from_home,
    search_date,
    search_term
FROM {{ source('jobs_src', 'job_postings') }}
WHERE error IS NULL
  AND job_id IS NOT NULL
QUALIFY ROW_NUMBER() OVER (
    PARTITION BY job_id
    ORDER BY search_date DESC
) = 1