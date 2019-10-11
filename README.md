# music-web
基于springcloud，springboot，mybatis的音乐网站

version 1.0（2019.10.11）
-------------------------------------------
用户登录
后台管理
推荐
搜索

数据库：
user：user_id username email password isVIP 

歌单表：musicList_id(key) user_id musicList_name music_id

歌曲：music_id music_name music_msg isVIP hotPoint musicType

分类：musicType_id(key) music_id type_name

（wangli）后台：easymall后台（）
      ***查看用户信息
      歌曲管理（添加，删除）

搜索：
    （wangli）爬虫：音乐信息
    （曾敏，文秀丽，）搜索音乐（ES）
 
 redis（7台）
 mycat
 nginx
-------------------------------------------

