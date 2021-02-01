Example client using `sasumaki/aiga-pipe`

Fork this repository
Setup flux to reconcile cluster:
`export GITHUB_TOKEN=<token>`
`flux bootstrap github --owner=<GITHUB_USER> --repository=asd --path=cluster`


Get pub-sealed-secrets.pem from sealed-secrets logs or `kubeseal --fetch-cert --controller-name=sealed-secrets --controller-namespace=flux-system` and update in secrets.
Copy sealed secrets from secrets/sealed and paste them into unsealed. Fill in values with real values and seal them ./secrets/seal_all.sh.


mnist should now be accessible at `http://<istio-gateway>/seldon/seldon-system/mnist-model/api/v1.0/predictions`

Run workflows e.g. `kubectl create -f workflows/mnist-train.yaml`