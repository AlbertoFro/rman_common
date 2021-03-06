CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_BACKUP_JOB_DETAILS" ("DB_NAME", "START_TIME", "END_TIME", "STATUS", "TIME_TAKEN_DISPLAY", "OUTPUT_BYTES_DISPLAY", "OUTPUT_DEVICE_TYPE", "SESSION_KEY", "SESSION_RECID", "SESSION_STAMP", "INPUT_TYPE") AS 
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM PROD1.rc_rman_backup_job_details
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM PROD2.rc_rman_backup_job_details
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM PROD3.RC_RMAN_BACKUP_JOB_DETAILS
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM PROD4.rc_rman_backup_job_details;
