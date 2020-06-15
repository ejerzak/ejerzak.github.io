#!/bin/bash
rsync -apzv ~/bitbucket/work/website/public_html/* jerzak@ssh.ocf.berkeley.edu:~/public_html
