# ocis-idp

The OCIS Identity Provider for ScienceBox stand-alone deployment


### Usage
- This image uses the upstream `owncloud/ocis` container and add supervisord to better manager the OCIS processes inside
- The image only comes with the software and a basic, default configuration
- Refer to upstream documentation for configuraiton options: https://owncloud.dev/extensions/idp/configuration/
- The required configuration to run the desired OCIS should be applied by means of Helm charts (or similar tools for container configuration)
