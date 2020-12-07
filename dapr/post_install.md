## dapr - Any language, any framework, anywhere

Dapr is a portable, event-driven runtime that makes it easy for developers to build resilient, microservice stateless and stateful applications that run on the cloud and edge and embraces the diversity of languages and developer frameworks.

### Verify installation
Verify the dapr-operator, dapr-placement, dapr-sidecar-injector and dapr-sentry pods are running in the dapr-system namespace:
```
kubectl get pods -n dapr-system -w
```
### Try out Dapr quickstarts to learn core concepts

[quickstarts](https://docs.dapr.io/getting-started/quickstarts/)

