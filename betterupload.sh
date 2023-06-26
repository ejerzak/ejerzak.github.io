#!/bin/bash
rsync -apzv ~/gitbucket/work/website/public_html/* jerzak@ssh.ocf.berkeley.edu:~/public_html
