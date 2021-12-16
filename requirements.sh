sleep 30
yum -y install wget docker git patch
wget -P /root/ https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
mv /root/jq-linux64 /usr/bin/jq
chmod u+x /usr/bin/jq
systemctl enable docker
sed -i "s@# INSECURE_REGISTRY=.*@INSECURE_REGISTRY='--insecure-registry 172.30.0.0/16'@" /etc/sysconfig/docker
# echo -e "DEVS=/dev/vdb\nVG=dockervg" > /etc/sysconfig/docker-storage-setup
# docker-storage-setup
wget -O /root/oc.tar.gz https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
cd /root ; tar zxvf oc.tar.gz
mv /root/openshift-origin-client-tools-*/oc /usr/bin
rm -rf  /root/openshift*
curl -L https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/bin/kubectl
chmod +x /usr/bin/kubectl
