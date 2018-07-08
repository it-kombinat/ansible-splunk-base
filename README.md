ansible-splunk-base (all-in-one Splunk) for DEMO
=========

Install and configure Splunk

Requirements
------------

RPM File stored in S3 Bucket

Role Variables
--------------

```
vars:
  splunk_binary_url: https://s3.eu-central-1.amazonaws.com/mysplunk/splunk-7.1.1-8f0ead9ec3db-linux-2.6-x86_64.rpm
  splunk_binary_file: splunk-7.1.1-8f0ead9ec3db-linux-2.6-x86_64.rpm
  splunk_binary_sha256sum: 304f01f07fb7a9199337aac97bbc918c09f0829b5ffe8386d2b7758be3a6aa27
  splunk_pgp_public_key: http://docs.splunk.com/images/6/6b/SplunkPGPKey.pub
  splunk_host_domain:
  splunk_license_master:
  company: it-kombinat
  splunk_admin_passwd: demo0815  # Password must contain at least 8 total printable ASCII character(s)
roles:
  - ansible-splunk-base
```

License
-------

BSD

Author Information
------------------

IT-KOMBINAT.ORG
