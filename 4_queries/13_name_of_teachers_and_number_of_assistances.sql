SELECT DISTINCT 
  teachers.name AS teacher, 
  cohorts.name AS cohorts,
  COUNT(assistance_requests.*)
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;