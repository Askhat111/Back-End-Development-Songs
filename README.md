# Back-End-Development-Songs

Songs Flask REST API with MongoDB — IBM Back-end Application Development Capstone Project.

Public repository: https://github.com/Askhat111/Back-End-Development-Songs

Direct README URL: https://github.com/Askhat111/Back-End-Development-Songs/blob/main/README.md

## Source and execution

Full application source, original directories, tests, templates and assets are in `source.zip`. Extract with `python -m zipfile -e source.zip .`, then install `requirements.txt`. The root Dockerfile extracts this source during the build. Original IBM Developer Skills Network starter attribution and license notices are preserved.

## Verified results

Deployed in OpenShift with a live MongoDB service. Actual curl verification: GET /health returned 200 OK and status OK; GET /song returned 200 OK and the songs array; PUT /song/900001 returned 201 CREATED with the updated record; DELETE /song/900001 returned 204 NO CONTENT. The temporary verification record was removed.

Deployment: https://songs-sn-labs-donnanelsonu.labs-prod-openshift-san-a45631dc5778dc6371c67d206ba9ae5c-0000.us-east.containers.appdomain.cloud

Validation date: 2026-11-01. These are temporary Skills Network lab deployments and may expire with the lab session. Terminal outputs and browser screenshots are separate submission evidence.

## Configuration

Songs uses `MONGODB_URI` or `MONGODB_SERVICE` and `MONGODB_PORT`. Django uses `SONGS_API_URL`, `PICTURES_API_URL`, `DJANGO_ALLOWED_HOSTS`, `DJANGO_SECRET_KEY`, `DJANGO_CSRF_TRUSTED_ORIGINS` and `DJANGO_TRUST_PROXY_HEADERS`. Only enable proxy-header trust behind the trusted deployment ingress. Do not commit credentials.
