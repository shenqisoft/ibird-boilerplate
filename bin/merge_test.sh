#!/bin/bash
# 合并到test
# 分支合并规定为单向，顺序为：feature-xxx -> develop -> master -> test -> prod
# Author:   Daniel
# Date:     2017/12/11
# Version:  1.0

git checkout master && git pull
git checkout test && git pull
git merge master --no-ff -m "合并master到test：$(date '+%Y-%m-%d %T')"
git push origin
git checkout develop