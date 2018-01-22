## Kedge Plugin for Helm

#### Using the plugin -

1. Install the plugin
   `helm plugin install https://github.com/kedgeproject/kedge-helm-plugin.git`

2. Package the chart using
   `helm kedge package <path to chart>`
 
   An example Kedge application is located at examples/wordpress/kedge/
   
   Run,
   `helm kedge package examples/wordpress/kedge/`
   
   The plugin generates Kubernetes artifacts and places in examples/wordpress/templates/kedge-generated.yaml 
   
3. Deploy the generated chart
   `helm install wordpress-0.1.0.tgz`

#### Short PoC:
[![asciicast](https://asciinema.org/a/dmGQDj0X89S3YCrYZ2oPEHF7G.png)](https://asciinema.org/a/dmGQDj0X89S3YCrYZ2oPEHF7G)

##### What's next?

- Add support for parameterization
