#/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

set -o allexport
source $SCRIPTPATH/../env
set +o allexport

# Run on GCP dataflow
GOOGLE_APPLICATION_CREDENTIALS=$SCRIPTPATH/../credentials.json \
mvn compile exec:java \
  -Dexec.mainClass=com.rkb.sentilysis.SetupPipeline \
  -Dexec.args="\
    --project=${PROJECT_ID} \
    --stagingLocation=gs://${BUCKET_NAME}/staging \
    --tempLocation=gs://${BUCKET_NAME}/temp \
    --runner=DataflowRunner \
    --numWorkers=1 \
    --maxNumWorkers=1 \
    --workerMachineType=n1-standard-1 \
    --streaming=true \
    --pubSubTopic=${PUBSUB_TOPIC} \
    --bqTable=${BQ_TABLE}"
