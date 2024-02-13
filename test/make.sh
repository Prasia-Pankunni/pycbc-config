WORKFLOW_NAME=RERUN_Pycbc1
CONFIG_TAG='v1.16.12'
# gpstart= 1333838898−152
# gpsend= 1334629458+24
GPSSTART='1333838746'
GPSEND='1334629482'
CHUNKNUMBER='1'
DESCRIPTION='INITIAL'


#ecp-cookie-init LIGO.ORG https://git.ligo.org/users/auth/shibboleth/callback kanchan.soni

pycbc_create_offline_search_workflow \
  --workflow-name ${WORKFLOW_NAME} --output-dir output \
  --config-files \
  analysis.ini \
  executables.ini \
  injections_minimal.ini \
  plotting.ini \
  gps_times.ini \
  data.ini \
  --config-overrides workflow:start-time:${GPSSTART} workflow:end-time:${GPSEND} \
          'results_page:analysis-subtitle:"O4 MDC Analysis '${CHUNKNUMBER}'"' \
          results_page:output-path:"/home/${USER}/public_html/others/a${CHUNKNUMBER}_RERUN" \
          workflow:file-retention-level:all_triggers \

