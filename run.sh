# ************************************************************
#
# This step will use qiniu upload tool `qshell` to upload
#
#   Variables used:
#     $FLOW_QINIU_ACCESS_KEY
#     $FLOW_QINIU_SECRET_KEY
#     $FLOW_QINIU_BUCKET
#     $FLOW_QINIU_KEY
#     $FLOW_QINIU_LOCAL_FILE
#
#   Outputs:
#     $FLOW_QINIU_RESULT
#
# ************************************************************

set +e
qshell account $FLOW_QINIU_ACCESS_KEY $FLOW_QINIU_SECRET_KEY
FLOW_QINIU_LOG=$(qshell fput $FLOW_QINIU_BUCKET $FLOW_QINIU_KEY $FLOW_QINIU_LOCAL_FILE true)
echo $FLOW_QINIU_LOG
errors_msg=$(echo $FLOW_QINIU_LOG | grep error)
if [[ $error_msg != "" ]]; then
  FLOW_TEST_RESULT=1
fi
FLOW_QINIU_RESULT=FLOW_TEST_RESULT
