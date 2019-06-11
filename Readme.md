# Setup Pipeline - Twitter Sentiment Analysis

This code will run a beam pipeline in java to process the tweets that have been published to a pubsub and run a sentiment analysis using GCP's NLP API.

This will set up a pipeline (Apache Beam) on Google Cloud Platform.

The pipeline involves

* Reading tweets from PubSub
* JSON Parsing
* Calculating Sentiment score through Google NLP APIs
* Writing tweets along with sentiment score to BigQuery table



## Deploying

We need to run a job in Dataflow. Follow below steps to achieve this:

First copy env and credentials.json to this directory
Then run below command to deploy this app in Dataflow on Google Cloud:

./scripts/setupPipeline.sh
