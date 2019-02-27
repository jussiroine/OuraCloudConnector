# Oura Cloud Connector
This is a Custom Connector for Power BI to access [Oura's](https://ouraring.com) Cloud APIs.

## Why is a custom connector needed?
In order to retrieve Oura's data from their API you'll need to authenticate successfully through their OAuth2 API. This requires a client ID and a client secret, that in turn result in an access token. Using this access token queries can be executed against the API. This custom connector takes care of handling the tokens and authorization, and provides a clean and easy interface for retrieving and analyzing your own health data in Power BI. 

For details on how this connector was built and how to use it, see my blog article [here](https://jussiroine.com/2019/02/building-a-custom-connector-for-power-bi-that-supports-oauth2-to-visualize-my-wellness-data/).

## Using the connector
In order to use this connector, you'll need to first install the [Power Query SDK](https://marketplace.visualstudio.com/items?itemName=Dakahn.PowerQuerySDK) for Visual Studio from the Visual Studio Marketplace. This allows you to edit and build the connector specifics.

Next, open the project in Visual Studio and modify client_id.txt and client_secret.txt. These are the OAuth2 authorization values you'll get from Oura's own Cloud API. Compile the solution, and deploy the resulting .MEZ file to %USERPROFILE%\Documents\Power BI Desktop\Custom Connectors\. 

Start up Power BI Desktop, select Get Data and select OuraCloudConnector. This allows you to query the Oura API directly. See Oura's own API [documentation](https://cloud.ouraring.com/docs/daily-summaries) for the exact parameters.

## Contact
PRs are more than welcomed. For any additional comments, send me a DM via [Twitter](https://twitter.com/jussiroine).

