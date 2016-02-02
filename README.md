# CasinocoinAPI
The Casinocoin API is build on top of the WSO2 stack. The public API is freely available can be accessed without authentication or autorisation. The provided data is stored in a MySQL database and used by the Qt Wallet and other projects. The following API calls are available:
## CoinInfo
http://api.casinocoin.org/CSCPublicAPI/CoinInfo

Gives information about the coin, the network and price information. The data is updated every 5 minutes.
## Exchanges
http://api.casinocoin.org/CSCPublicAPI/ActiveExchanges

Returns all information about the exchanges where Casinocoin can be traded.
## News
http://api.casinocoin.org/CSCPublicAPI/ActiveNewsItems

Returns the latest news items provided by the Casinocoin group.
## Promotions
http://api.casinocoin.org/CSCPublicAPI/ActivePromotions

Returns the current active casino promotions.