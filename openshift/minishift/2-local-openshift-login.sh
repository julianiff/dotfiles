docker login -u developer -p $(oc whoami -t) $(minishift openshift registry)
