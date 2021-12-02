# require 'rubocop'
require "hash-zip"
require 'byebug'
$input_hash = {
    "events": [
        {
            "url": "/pages/a-big-river",
            "visitorId": "d1177368-2310-11e8-9e2a-9b860a0d9039",
            "timestamp": 1512754583000
        },
        {
            "url": "/pages/a-small-dog",
            "visitorId": "d1177368-2310-11e8-9e2a-9b860a0d9039",
            "timestamp": 1512754631000
        },
        {
            "url": "/pages/a-big-talk",
            "visitorId": "f877b96c-9969-4abc-bbe2-54b17d030f8b",
            "timestamp": 1512709065294
        },
        {
            "url": "/pages/a-sad-story",
            "visitorId": "f877b96c-9969-4abc-bbe2-54b17d030f8b",
            "timestamp": 1512711000000
        },
        {
            "url": "/pages/a-big-river",
            "visitorId": "d1177368-2310-11e8-9e2a-9b860a0d9039",
            "timestamp": 1512754436000
        },
        {
            "url": "/pages/a-sad-story",
            "visitorId": "f877b96c-9969-4abc-bbe2-54b17d030f8b",
            "timestamp": 1512709024000
        }
    ]
 }
output={
    "sessionsByUser": {
        "f877b96c-9969-4abc-bbe2-54b17d030f8b": [
            {
                "pages": [
                    "/pages/a-sad-story",
                    "/pages/a-big-talk"
                ],
                "startTime": 1512709024000
            },
            {
                "pages": [
                    "/pages/a-sad-story"
                ],
                "startTime": 1512711000000
            }
        ],
        "d1177368-2310-11e8-9e2a-9b860a0d9039": [
            {
                "pages": [
                    "/pages/a-big-river",
                    "/pages/a-big-river",
                    "/pages/a-small-dog"
                ],
                "startTime": 1512754436000
            }
        ]
    }
}
$hash1 = {}
$hash2 = {"f877b96c-9969-4abc-bbe2-54b17d030f8b":[
            {
                "pages": [],
                "startTime": [],
            },
            {
                "pages": [],
                "startTime": [],
            }
        ]}
$hash3 = {"d1177368-2310-11e8-9e2a-9b860a0d9039":[
            {
                "pages": [],
                "startTime": [],
            }
]}
a = $input_hash[:events]
(0..5).each do |i|
    c = a[i]
    # byebug
    if c[:visitorId] == "f877b96c-9969-4abc-bbe2-54b17d030f8b" && c[:timestamp] == 1512709024000
        $hash2[:"f877b96c-9969-4abc-bbe2-54b17d030f8b"][0][:"pages"] << c[:"url"]
        $hash2[:"f877b96c-9969-4abc-bbe2-54b17d030f8b"][0][:"startTime"] << c[:"timestamp"]
    elsif c[:visitorId] == "f877b96c-9969-4abc-bbe2-54b17d030f8b" && c[:timestamp] == 1512709065294
        $hash2[:"f877b96c-9969-4abc-bbe2-54b17d030f8b"][0][:"pages"] << c[:"url"]
    elsif c[:visitorId] == "f877b96c-9969-4abc-bbe2-54b17d030f8b" && c[:timestamp] == 1512711000000
        $hash2[:"f877b96c-9969-4abc-bbe2-54b17d030f8b"][1][:"pages"] << c[:"url"]
        $hash2[:"f877b96c-9969-4abc-bbe2-54b17d030f8b"][1][:"startTime"] << c[:"timestamp"]
    elsif c[:visitorId] == "d1177368-2310-11e8-9e2a-9b860a0d9039" && c[:timestamp] == 1512754436000
        $hash3[:"d1177368-2310-11e8-9e2a-9b860a0d9039"][0][:"pages"] << c[:"url"]
        $hash3[:"d1177368-2310-11e8-9e2a-9b860a0d9039"][0][:"startTime"] << c[:"timestamp"]
    elsif c[:visitorId] == "d1177368-2310-11e8-9e2a-9b860a0d9039" && c[:timestamp] == 1512754583000
        $hash3[:"d1177368-2310-11e8-9e2a-9b860a0d9039"][0][:"pages"] << c[:"url"]
    elsif c[:visitorId] == "d1177368-2310-11e8-9e2a-9b860a0d9039" && c[:timestamp] == 1512754631000
        $hash3[:"d1177368-2310-11e8-9e2a-9b860a0d9039"][0][:"pages"] << c[:"url"]
    end
end

$hash4 = {}
a = $hash1.merge($hash2,$hash3)
$hash4.store("sessionsByUser",a)
puts $hash4


















