#!/bin/bash
for i in 1 2 3 4 5; do
    URL=`curl -s -w '\n' https://discovery.etcd.io/new?size=3`;
    if [ ! -z $URL ]; then
        sed -e "s|coreos_discovery:.*|coreos_discovery: $URL|" vars/coreos.yml > vars/coreos.yml.tmp;
        mv vars/coreos.yml.tmp vars/coreos.yml
        echo "Wrote $URL to vars/coreos.yml";
        break;
    fi;
    if [ $i -eq 5 ]; then
        echo "Failed to contact https://discovery.etcd.io after $$i tries";
    else
        sleep 3;
    fi
done
