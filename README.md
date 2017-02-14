# qiniu_upload_plugin Step
qiniu upload plugin, used to save a file to qiniu cdn.

### INPUTS

* `FLOW_QINIU_ACCESS_KEY` - qiniu access key.
* `FLOW_QINIU_SECRET_KEY` - qiniu secret key.
* `FLOW_QINIU_BUCKET` - qiniu bucket.
* `FLOW_QINIU_KEY` - file key.
* `FLOW_QINIU_LOCAL_FILE` - local file.
* `FLOW_QINIU_RESULT` - qiniu result url.


## EXAMPLE 

```yml
steps:
  - name: qiniu_upload_plugin
    enable: true
    failure: true
    plugin:
      name: qiniu_upload_plugin
      inputs:
        - FLOW_QINIU_ACCESS_KEY=$FLOW_QINIU_ACCESS_KEY
        - FLOW_QINIU_SECRET_KEY=$FLOW_QINIU_SECRET_KEY
        - FLOW_QINIU_BUCKET=$FLOW_QINIU_BUCKET
        - FLOW_QINIU_KEY=$FLOW_QINIU_KEY
        - FLOW_QINIU_LOCAL_FILE=$FLOW_QINIU_LOCAL_FILE
        - FLOW_QINIU_RESULT=$FLOW_QINIU_RESULT
```
