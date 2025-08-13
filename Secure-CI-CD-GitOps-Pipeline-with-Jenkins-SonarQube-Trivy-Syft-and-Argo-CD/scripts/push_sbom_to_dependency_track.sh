curl -X POST \
  -H "Content-Type: application/json" \
  -H "X-API-Key: <YOUR_DEPENDENCY_TRACK_API_KEY>" \
  --data @syft/sbom.json \
  http://<dependency-track-url>/api/v1/bom
