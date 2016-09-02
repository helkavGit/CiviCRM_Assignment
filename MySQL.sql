select  civicrm_contact.display_name, civicrm_contact.organization_name, count(civicrm_case.status_id) as 'Total cases'
from civicrm_case, civicrm_case_contact, civicrm_contact 
where 
(( civicrm_contact.id = civicrm_case_contact.contact_id) and ((civicrm_case_contact.case_id = civicrm_case.id) and (civicrm_case.status_id = '1'))) 
group by civicrm_contact.display_name, civicrm_contact.organization_name