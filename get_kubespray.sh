VERSION=2.3.0

wget https://github.com/kubernetes-incubator/kubespray/archive/v$VERSION.zip && unzip v$VERSION.zip
rm kubespray
ln -s kubespray-$VERSION kubespray
