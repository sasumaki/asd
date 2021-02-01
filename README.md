Example client using `sasumaki/aiga-pipe`

Setup flux to reconcile cluster:
`export GITHUB_TOKEN=<token>`
`flux bootstrap github --owner=sasumaki --repository=asd --path=cluster`


Get pub-sealed-secrets.pem from sealed-secrets logs or `kubeseal --fetch-cert --controller-name=sealed-secrets --controller-namespace=flux-system` and update in secrets.
Write in and seal your secrets (Write in unsealed and ./secrets/seal_all.sh).