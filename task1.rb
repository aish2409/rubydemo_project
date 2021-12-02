  # data = { "properties"=>[{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}]}
data = {
    "events": [{ "url": "/pages/a-big-river","visitorId": "d1177368-2310-11e8-9e2a-9b860a0d9039",
            "timestamp": 1512754583000 },
        {
            "url": "/pages/a-small-dog",
            "visitorId": "d1177368-2310-11e8-9e2a-9b860a0d9039",
            "timestamp": 1512754631000
        }

     ]
 }


puts data["events"]
# puts data
 #{"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>"GOOG"}}{"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>"FB"}}

# data = { "properties"=>[{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}]}
#   => {"properties"=>[{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}]}
#  2.6.6 :028 > data["properties"]
#   => [{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}]
#  2.6.6 :029 > data["properties"][0]
#   => {"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}
#  2.6.6 :030 > data["properties"][0]["name"]
#   => "Google"
#  2.6.6 :031 > data["properties"][0]["stock_symbol"]
#   => "GOOG"

#  data["properties"].to_a
#  => [{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}]
# 2.6.6 :007 > data["properties"].to_a[0].to_a
#  => [["name", "Google"], ["stock_symbol", "GOOG"], ["primary_role", "company"]]
# 2.6.6 :008 > data["properties"].to_a[0].to_a.flatten
#  => ["name", "Google", "stock_symbol", "GOOG", "primary_role", "company"]
# 2.6.6 :009 >
