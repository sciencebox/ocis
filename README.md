# ocis

The ownCloud Infinite Scale container with supervisord for ScienceBox


### Usage
- This image uses the upstream `owncloud/ocis` container and add supervisord to better manager the oCIS extensions inside
- The image only comes with the software and a basic, default configuration
- Refer to [upstream documentation](https://owncloud.dev/extensions/) for available extensions and configuraiton options
- The required configuration to run the desired oCIS should be applied by means of Helm charts (or similar tools for container configuration)
