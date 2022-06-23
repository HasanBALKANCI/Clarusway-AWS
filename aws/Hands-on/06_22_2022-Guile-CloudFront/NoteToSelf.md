* CloudFront is the Content Delivery Network (CDN) of AWS. Basically, it is a globally distributed network located on different geographical places. 

* The aim of this service is to provide faster distribution to the dynamic or the static web contents. 

* World-wide distributed data centers which are called EDGE LOCATIONS are the backbone of CloudFront.

* AWS CloudFront has a world-wide network of 310+ Points of Presence (PoP) consisting of 300+ Edge Locations and 13 Regional Mid-tier Caches. These facilities are spread over 90+ cities across 47 countries (March 2022).

* Viewer/Origin Request --- Viewer/Origin Response

* You can use a CloudFront origin access identity (OAI) to access the S3 bucket. Default value is "Don't use OAI".

* Restrict Viewer Access: Enables restricting viewers using Signed URLs or Signed Cookies to access the content.

* Cache key and origin requests: You can use a cache policy and origin request policy to control the cache key and origin requests. For example, you can describe TTL (Time To Live) for your objects. By default, each file automatically expires after 24 hours.

* Custom SSL Certificate: Enables you to select the Default CloudFront Certificate or a custom SSL certificate.

* Geographic Restrictions Settings
CloudFront enables you to restrict users to access your distribution depending on their geographic positions. This can be done in two different ways: Allowlist and Blocklist.

* If you want any of your objects (e.g. an unnecessary or unwanted image) to be removed from CloudFront edge caches due to any reason, you can easily Create Invalidation. Just specify the path of the object/objects that you want to remove and click Invalidate. You can also remove multiple objects using wildcards.

* 
