# Oura Cloud Connector
This is a Custom Connector for Power BI to access [Oura's](https://ouraring.com) Cloud APIs.

## Using the connector
In order to use this connector, you'll need to first install the [Power Query SDK](https://marketplace.visualstudio.com/items?itemName=Dakahn.PowerQuerySDK) for Visual Studio from the Visual Studio Marketplace. This allows you to edit and build the connector specifics.

Next, open the project in Visual Studio and modify client_id.txt and client_secret.txt. These are the OAuth2 authorization values you'll get from Oura's own Cloud API. Compile the solution, and deploy the resulting .MEZ file to %USERPROFILE%\Documents\Power BI Desktop\Custom Connectors\. 

Start up Power BI, select Get Data and select OuraCloudConnector. This allows you to query the Oura API directly. See Oura's own API [documentation](https://cloud.ouraring.com/docs/daily-summaries) for the exact parameters. 
