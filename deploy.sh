rm -rf public/
HUGO_ENV=production hugo --gc --minify
# ͬ��ͼƬ��Դ�� oss
ossutilmac64 cp -r -u public/images oss://liuzhichao/images --exclude '.DS_Store' --jobs=10
ossutilmac64 cp -r -u public/js oss://liuzhichao/js --exclude '.DS_Store' --jobs=10
# ͬ��վ����Դ��������
rsync -avz --delete public/ blog:/var/www/liuzhichao.com