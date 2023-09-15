# 获取 NotoSansJP 字体文件
git clone --depth 1 --single-branch --branch master https://github.com/notofonts/noto-cjk.git --filter=blob:none --sparse
cd noto-cjk
git sparse-checkout init --cone
echo "/SubsetOTF/JP/*" >> .git/info/sparse-checkout
git pull --depth=1 origin master
