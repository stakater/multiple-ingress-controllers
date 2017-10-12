#!/usr/bin/env bash

tmpl_path="internal/ingress"
echo "Substituting cert arn in nginx-ingress-controller-service.tmpl.yaml"
sed "s|<%CERT-ARN%>|${CERT_ARN}|g" "${tmpl_path}/nginx-ingress-controller-service.tmpl.yaml" > "${tmpl_path}/nginx-ingress-controller-service.yaml"
tmpl_path="external/ingress"
sed "s|<%CERT-ARN%>|${CERT_ARN}|g" "${tmpl_path}/nginx-ingress-controller-service.tmpl.yaml" > "${tmpl_path}/nginx-ingress-controller-service.yaml"

tmpl_path="external/exposecontroller"
echo "Substituting domain in expose-controller-config-map.tmpl.yaml"
sed "s|<%DOMAIN%>|${DOMAIN_NAME}|g" "${tmpl_path}/expose-controller-config-map.tmpl.yaml" > "${tmpl_path}/expose-controller-config-map.yaml"
tmpl_path="internal/exposecontroller"
sed "s|<%DOMAIN%>|${DOMAIN_NAME}|g" "${tmpl_path}/expose-controller-config-map.tmpl.yaml" > "${tmpl_path}/expose-controller-config-map.yaml"
echo "Substituting domain in externaldns-deployment.tmpl.yaml"
tmpl_path="externaldns"
sed "s|<%DOMAIN%>|${DOMAIN_NAME}|g" "${tmpl_path}/externaldns-deployment.tmpl.yaml" > "${tmpl_path}/externaldns-deployment.yaml"

echo "Substituting txt-owner-id in externaldns-deployment.tmpl.yaml"
sed "s|<%TXT-OWNER-ID%>|${TXT_OWNER_ID}|g" "${tmpl_path}/externaldns-deployment.tmpl.yaml" > "${tmpl_path}/externaldns-deployment.yaml"

cd externaldns
./deploy-externaldns.sh
cd ..

sleep 30s

cd external
./deploy-external.sh
cd ..

cd internal
./deploy-internal.sh
cd ..