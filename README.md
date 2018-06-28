# Sync RocketBook Notes from Cloud Storage to Confluence

This script provides a convinient way to sync your RocketBook notes (or any other files) from a supported cloud provider (see https://rclone.org/overview/) to Confluence as attachments via REST.

## Requirements

* rclone: https://rclone.org
* curl
* a cloud storage provider supported by rclone

## Pre-flight

Generate a rclone config for your storage provider by running:

```bash
rclone config
```

## Usage

To upload all files in the current folder, run `sync-cloud-to-confluence.sh` with your Confluence Username, Confluence Password and Confluence PageId (can be obtained from the end of the URL when editing your page).

Files from your cloud storage will be saved in `yourSourceDirectory` and then attached to `yourConfluencePageId` in `yourConfluenceInstance`.

* `yourConfluenceUsername` - e.g. dave.daniels
* `yourConfluencePassword` - e.g. kjlhwLJKHwljhe
* `yourConfluencePageId` - e.g. 1382981372
* `yourSourceDirectory` - e.g. /Users/dave.daniels/rocketbook
* `yourConfluenceInstance` - e.g. https://confluence.daves-company.io

```bash
./sync-cloud-to-confluence.sh yourConfluenceUsername yourConfluencePassword yourConfluencePageId yourSourceDirectory yourConfluenceInstance`
```

## Restrictions

* Currently no updates to files are possible
* Sync is only one way (cloud storage -> Confluence)

## Additional Documentation

* Uploading files to Confluence via REST: https://community.atlassian.com/t5/Confluence-questions/How-to-post-attachments-to-confluence-page/qaq-p/214853
