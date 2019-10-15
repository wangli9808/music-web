# music-web
基于springcloud，springboot，mybatis的音乐网站

version 1.0（2019.10.11）
-------------------------------------------

 
 模块：用户登录 后台管理 个性推荐 搜索
 
 数据库(王枥）
     用户表：user_id(key) username(UNIQUE) password email isVIP
     歌单表：musicList_id(KEY AUTO) user_id musicList_name music_id
     歌曲表：music_id(key) music_name music_msg isVIP hotPoint musicType
     分类表：musicType_id(key) music_id typeName
 
 后台系统（王枥）
     用户信息
     歌曲管理
     网站信息收集（用户数，类型喜爱度，歌曲热度等）
     爬虫爬取歌曲信息
     
 搜索（曾敏，杨金鹏）
     关键字查询音乐（ES）
  
 前端（）
     页面修改（李子龙，金凡琦）
     接口文件（文秀礼，王佛涛）
     
 后台服务拆分（曾敏，杨金鹏）
 
 服务
 
 
 redis（7台）
 
 mycat
 
 nginx

-------------------------------------------
更改hosts文件

140.82.114.3	  github.com
199.232.5.194	 github.global.ssl.fastly.net

最后刷新DNS,cmd窗口执行命令
ipconfig /flushdns

-------------------------------------------
项目分工：
   分工模块                           负责人                                   项目命名规范：
   
1. 用户模块：                         金凡琦                                 rcmusic_user     
2. 歌手模块：                         杨金鹏                                 rcmusic_singer
3. 榜单模块：                         李子龙                                 rcmusic_bulletin
4. 首页模块：                         陈亮                                   rcmusic_index
5. 用户收藏（我的音乐）：              崔心玥                                 rcmusic_mymusic
6. 推荐模块：                         王佛涛                                 rcmusic_recommend
7. 前台拆分、接口文件、全文数据库：    文秀礼  曾敏                            
8. 后台管理系统和数据库：             王枥                                   rcmusic_backend_manage
