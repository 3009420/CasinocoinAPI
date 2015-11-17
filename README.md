# CasinocoinAPI
The Casinocoin API is build on top of the WSO2 stack. The public API is freely available can be accessed without authentication or autorisation. The provided data is stored in a MySQL database and used by the Qt Wallet and other projects. The following API calls are available:
## CoinInfo
http://api.csc.dig0.com/CSCPublicAPI/CoinInfo

Gives information about the coin, the network and price information. The data is updated every 5 minutes.
## News
http://api.csc.dig0.com/CSCPublicAPI/ActiveNews

Returns the latest news items provided by the Casinocoin group.
## Promotions
http://api.csc.dig0.com/CSCPublicAPI/ActivePromotions

Returns the current active casino promotions.