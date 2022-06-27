branch=main
git clone -b $branch https://github.com/suraj-011/ususiid /root/ususiid
cp ultroid/.env /root/ususiid/.env
cd /root/ususiid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
