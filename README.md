# Tools for pod init containers

## Tools

### wait-for-it.sh

Used to check that other services are running before deploying the main containers.

Usage:

```yaml
args:
- /bin/sh
- wait-for-it.sh
- -t
- "120"
- "dependency-host.namespace.svc.cluster.local:80"
- --
- echo
- "Dependency is running"
```