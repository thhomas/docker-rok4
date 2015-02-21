# docker-rok4

A docker image of [Rok4](http://www.rok4.org) (GitHub : [rok4/rok4](https://github.com/rok4/rok4)).


## Quick
```
docker run --publish 9000:9000 rok4/rok4
```

## Custom Config
You can custom settings by providing environment variable or environment file.

* Environment variable : `docker run --publish 9000:9000 --env ROK4_SERVICE_TITLE=docker-rok4
 rok4/rok4` (see below for variable list).
* Environment file : `docker run --publish 9000:9000 --env-file=custom_env
 rok4/rok4`. `custom_env` must be a line delimited file of environment variables (see below for variable list).

Settings variables
==================

* See `default_env` for default values
* For server.conf file :
  * ROK4_SERVER_LOGOUTPUT
  * ROK4_SERVER_LOGFILEPREFIX
  * ROK4_SERVER_LOGPERIOD
  * ROK4_SERVER_NBTHREAD
  * ROK4_SERVER_LOGLEVEL
  * ROK4_SERVER_WMTSSUPPORT
  * ROK4_SERVER_WMSSUPPORT
  * ROK4_SERVER_REPROJECTION
  * ROK4_SERVER_FCGIBACKLOG
* For services.conf file :
  * ROK4_SERVICE_TITLE
  * ROK4_SERVICE_ABSTRACT
  * ROK4_SERVICE_PROVIDERNAME
  * ROK4_SERVICE_PROVIDERSITE
  * ROK4_SERVICE_KEYWORDS : list of keywords, comma separated
  * ROK4_SERVICE_FEE
  * ROK4_SERVICE_ACCESSCONSTRAINT
  * ROK4_SERVICE_INDIVIDUALNAME
  * ROK4_SERVICE_INDIVIDUALPOSITION
  * ROK4_SERVICE_VOICE
  * ROK4_SERVICE_FACSIMILE
  * ROK4_SERVICE_ADDRESSTYPE
  * ROK4_SERVICE_DELIVERYPOINT
  * ROK4_SERVICE_CITY
  * ROK4_SERVICE_ADMINISTRATIVEAREA
  * ROK4_SERVICE_POSTCODE
  * ROK4_SERVICE_COUNTRY
  * ROK4_SERVICE_ELECTRONICMAILADDRESS
  * ROK4_SERVICE_WMS
  * ROK4_SERVICE_MAXWIDTH
  * ROK4_SERVICE_MAXHEIGHT
  * ROK4_SERVICE_LAYERLIMIT
  * ROK4_SERVICE_MAXTILEX
  * ROK4_SERVICE_MAXTILEY
  * ROK4_SERVICE_FORMATLIST : list of formats, comma separated
  * ROK4_SERVICE_GLOBALCRSLIST : list of CRS, comma separated
  * ROK4_SERVICE_FULLYSTYLING
  * ROK4_SERVICE_INSPIRE
  * ROK4_SERVICE_METADATAWMS_URL
  * ROK4_SERVICE_METADATAWMS_TYPE
  * ROK4_SERVICE_METADATAWMS_URL
  * ROK4_SERVICE_METADATAWMS_TYPE
  * ROK4_SERVICE_AVOIDEQUALSCRSREPROJECTION
  * ROK4_SERVICE_ADDEQUALSCRS
