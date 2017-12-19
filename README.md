## Kedge Plugin for Helm

#### Using the plugin -

- Install the plugin
`helm plugin install https://github.com/containscafeine/kedge-helm-plugin.git`

- Package the chart using
`helm kedge package <path to chart>`

An example Kedge application is located at examples/wordpress/kedge/

Run,
`helm kedge package examples/wordpress/kedge/`

The plugin generates Kubernetes artifacts and places in examples/wordpress/templates/kedge-generated.yaml 

- Deploy the generated chart
`helm install wordpress-0.1.0.tgz`

##### What's next?

- Add support for parameterization
