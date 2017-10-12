#!/usr/bin/env bash

#!/usr/bin/env bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

# now deploy the ingress controller
cd ingress
./teardown.sh
cd ..

# now deploy the expose controller
cd exposecontroller
./teardown.sh
cd ..

# now deploy the sample app
cd echoserver
./teardown.sh
cd ..

# setup namespace first
kubectl delete -f internal-namespace.yaml
