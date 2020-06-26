IMG=quay.io/jwmatthews/sshpod:v0.3

SSH_PUB_KEY="./key/sshpod_id_ecdsa.pub"
SSHKEY=`cat $SSH_PUB_KEY`

cd ./image

docker build --build-arg sshkey="$SSHKEY" -t $IMG -f Dockerfile .
docker push $IMG


