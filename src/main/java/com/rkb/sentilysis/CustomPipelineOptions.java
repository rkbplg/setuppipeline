package com.rkb.sentilysis;

import org.apache.beam.sdk.options.PipelineOptions;

public interface CustomPipelineOptions extends PipelineOptions {

  String getPubSubTopic();
  void setPubSubTopic(String topic);

  String getBqTable();
  void setBqTable(String bqTable);

}
