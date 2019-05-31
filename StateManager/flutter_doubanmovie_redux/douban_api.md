# 豆瓣电影api
## 1、获取正在热映的电影：

接口：https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b

 

参数：

* start : 数据的开始项

* count：单页条数

* city：城市

 

如：获取 广州热映电影 第一页 10条数据：

<https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=广州&start=0&count=10>

 

返回数据格式：

| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| count | int  | 单页条数 |
| start	| int	| 数据的开始项 |
| total |	int	| 数据总条数 |
| subjects |	json 数组	|电影列表|
| title |	string	|值为 "正在上映的电影-广州"|

subjects 是电影列表，是一个 json 数组，里面存的是具体的电影信息，电影信息的格式为：
| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| rating |	json对象 |	评分信息 |
| genres |json数组	|电影类型|
| title	|string	|电影名中文名|
| casts |	json数组	|主演列表 |
| collect_count| int|观看人数|
| original_title| string| 电影原名 |
| subtype| string | 数据类型 |
| directors	| json数组 |	导演列表 |
| year |	int	| 上映年份 |
| images	|json对象	|存放各种大小的电影图|
| alt | string| 网页链接 |
| id	|string|	电影id|

rating 是评分信息，其格式为：
| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| max | int | 最高分 |
| average| double | 平均评分 |
| min | int |最低分 |

casts 是主演列表，是一个 json 数组，里面存的是具体的主演信息，主演信息的格式为：
| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| alt | string| 网页链接 |
| avatars |json对象	|存放各种大小的主演图片|
| name | string | 主演名字 |
| id| string | 主演id |

directors 是导演列表，是一个 json 数组，里面存的是导演的信息，导演信息的格式为：
| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| alt | string| 网页链接 |
| avatars |json对象	|存放各种大小的主演图片|
| name | string | 主演名字 |
| id| string | 主演id |
 
这里主演信息和 导演信息的格式是一样的。
## 2、获取电影Top250：

接口：https://api.douban.com/v2/movie/top250?apikey=0b2bdeda43b5688921839c8ecb20399b

 

访问参数：

* start : 数据的开始项

* count：单页条数

 

如：获取电影Top250 第一页 10条数据：

https://api.douban.com/v2/movie/top250?apikey=0b2bdeda43b5688921839c8ecb20399b&start=0&count=10

 

返回数据格式：同上

 

## 3、获取即将上映电影：

接口：https://api.douban.com/v2/movie/coming_soon?apikey=0b2bdeda43b5688921839c8ecb20399b

访问参数：

* start : 数据的开始项

* count：单页条数

 

如：获取即将上映电影 第一页 10条数据：

https://api.douban.com/v2/movie/coming_soon?apikey=0b2bdeda43b5688921839c8ecb20399b&start=0&count=10

 

返回数据格式：同上

 

## 4、电影搜索

接口：https://api.douban.com/v2/movie/search?apikey=0b2bdeda43b5688921839c8ecb20399b

 

访问参数：

* start : 数据的开始项

* count：单页条数

* q：要搜索的电影关键字

* tag：要搜索的电影的标签

 

如：

搜索电影《神秘巨星》：

https://api.douban.com/v2/movie/search?apikey=0b2bdeda43b5688921839c8ecb20399b&q=神秘巨星&start=0&count=10

搜索喜剧类型的电影：

https://api.douban.com/v2/movie/search?apikey=0b2bdeda43b5688921839c8ecb20399b&tag=喜剧&start=0&count=10

 

返回数据格式：同上

 

## 5、电影详情

接口：https://api.douban.com/v2/movie/subject/:id?apikey=0b2bdeda43b5688921839c8ecb20399b

 

访问参数：

* 电影id

 

如：电影《神秘巨星》的电影id为：26942674，搜索此电影的详细信息：

https://api.douban.com/v2/movie/subject/26942674?apikey=0b2bdeda43b5688921839c8ecb20399b



返回数据格式：


| key   | 类型 | 描述     |
| :---- | ---- | -------- |
| rating|	json对象	|评分信息|
| reviews_counbt| int | 长评数 |
| wish_count | int | 想看的人数 |
| douban_site| string | douban网址 |
| year|string|年份|
| images |json对象|存放各种大小的电影图|
| alt | string| 网页链接 |
| id	|string|	电影id|
| mobile_url | string | 手机网址 |
| title	|string	|电影名中文名|
| share_url | string | 分享网址 |
| countries	|json数组	|制片国家/地区 |
| genres |json数组	|电影类型|
| collect_count| int|观看人数|
| casts |	json数组	|主演列表 |
| original_title| string| 电影原名 |
| summary	|string	|简介|
| subtype| string | 数据类型 |
| directors	| json数组 |	导演列表 |
| comments_count |	int	|短评人数|
| ratings_count |	int	|评分人数|
| aka | string |别名|
