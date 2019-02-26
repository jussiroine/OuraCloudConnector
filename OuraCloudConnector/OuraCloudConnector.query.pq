// Use this file to write queries to test your data connector
let
    result = OuraCloudConnector.Contents("https://api.ouraring.com/v1/sleep?start=2019-02-24&end=2019-02-25")
in
    result