WORKFLOW_NAME=GW150914
CONFIG_TAG='v1.16.10'
# gpstart= 1333838898−152
# gpsend= 1334629458+24
#GPSSTART='1333838746'
#GPSEND='1334629482'
CHUNKNUMBER='1'
DESCRIPTION='INITIAL'


#ecp-cookie-init LIGO.ORG https://git.ligo.org/users/auth/shibboleth/callback 

pycbc_create_offline_search_workflow \
  --workflow-name ${WORKFLOW_NAME} --output-dir output \
  --config-files \
  analysis.ini \
  executables.ini \
  injections_minimal.ini \
  plotting.ini \
  gps_times_O1_analyses_123.ini \
  data.ini \
  --config-overrides  \
          'results_page:analysis-subtitle:"GW150914 analysis '${CHUNKNUMBER}'"' \
          results_page:output-path:"/home/${USER}/public_html/o1/test/a${CHUNKNUMBER}_${DESCRIPTION}" \
          workflow:file-retention-level:all_triggers \
