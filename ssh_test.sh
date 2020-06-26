SSH_PRIV_KEY="./key/sshpod_id_ecdsa"
SSH_SVC=`oc get service sshpod -o jsonpath="{.status.loadBalancer.ingress[0].hostname}"`

echo "Will ssh to '$SSH_SVC' with '$SSH_PRIV_KEY'"

ssh -o StrictHostKeyChecking=no -p 2222 -i ${SSH_PRIV_KEY} ssh@$SSH_SVC

