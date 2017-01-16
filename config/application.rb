require_relative 'boot'

require 'rails/all'

PUBLIC_KEY = "-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnqBHkA9aNdhT7nyHSfbj4hHw1
25xzLbS06Lpw6MsajVyzc/iV99rxi/6Zdh6zZ4nINzyOtPjacngWiGEHSb51X7qS
NNpTTYB7Ogjd2GJG5IvAvmZjrnX7p2TA9h+jzoJClNr06YH7g2DKtsya5ACUI2k7
spHwqlemt2swHAcA0wIDAQAB
-----END PUBLIC KEY-----"

PRIVATE_KEY = "-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQCnqBHkA9aNdhT7nyHSfbj4hHw125xzLbS06Lpw6MsajVyzc/iV
99rxi/6Zdh6zZ4nINzyOtPjacngWiGEHSb51X7qSNNpTTYB7Ogjd2GJG5IvAvmZj
rnX7p2TA9h+jzoJClNr06YH7g2DKtsya5ACUI2k7spHwqlemt2swHAcA0wIDAQAB
AoGAHLiLEA+kQqmW4KAbMC7/b/tqN+O+QnDzAwbXYZ5PpOXQmqFkVXSXWkfMPsfg
bIVxMg5cXmocM3fmoJ2OWaxFZxkD6LnPs8MqX4yt5WrMQXW3aMvjpQ3PxTgzKizM
LzuRqjgZ+4EOxbFaLIacjTGUWkR8DXW6p7a7ySW9Bm2AXzkCQQDZ3OrRROQ1Udlo
gdABpvrNlYRIKQsfcJiLbP7lLBIgZdotqAws0GOtLDpJPYjhalNnb0vjQsiG0DCQ
mzb2rDjtAkEAxQFBA3xQ0PHwcGz9LWj/kPTbOgJP+YLd5k43IiistNEwM3qbsAg/
P1lkeGNc72ACjnS0dfHixAWyc4+B+EGovwJBANRIEH4MtJjHwiG0q2uQurzrPVPa
uj3ORrVEZTIEuTzcQbVPE13vR9CLUdffn6qVIeOdbMJqZl4GKewdcXb15RkCQE6E
WW0SNwOP6cxlI+LdXj5f2KAeG9HOHrKTqdWrcGoAlb1uuG5IWyzca/avY3LkSSCN
0v7PERofSyhTofFX+fECQQDS7z97iqMUMHJViP0/DbG1ZkE9UYBAZo3eO+vLv/AX
zIomfFkAsOiygMVKiwy+ze3qXwIpwhDbkdbm3SQZ2s3E
-----END RSA PRIVATE KEY-----"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Template
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
