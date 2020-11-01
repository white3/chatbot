# 作业

文件目录

```
.
├── docker-compose.yml		容器配置文件
├── Gemfile					包管理文件
├── Gemfile.lock
├── lita-calculator			calculator模块
├── lita-calender			calender模块
├── lita_config.rb			lita配置文件
├── lita-doubler			double模块
├── Procfile				heroku执行文件
└── update.sh				上传脚本
```



### 本地执行

本地执行测试，在项目根目录下

```shell
bundle exec lita
```

查看帮助文档

```
Lita > lita help
Lita: help - Lists help information for terms and command the robot will respond to.
Lita: help COMMAND - Lists help information for terms or commands that begin with COMMAND.
Lita: info - Replies with the current version of Lita.
Lita: users find SEARCH_TERM - Find a Lita user by ID, name, or mention name.
Lita: double N - prints N + N
Lita: calender 2015-8 - 不是闰年。该月日历为，
 Sun Mon Tue Wed Thu Fri Sat
                           1
   2   3   4   5   6   7   8
   9  10  11  12  13  14  15
  16  17  18  19  20  21  22
  23  24  25  26  27  28  29
  30  31
Lita: calc 999999999999999999 * 2525252 - 2525251999999999997474748.0
Lita >
```



#### 功能模块

- double

```
Lita > lita double 2
2 + 2 = 4
```

- calender

```
Lita > Lita: calender 2015-8
不是闰年。该月日历为，
 Sun Mon Tue Wed Thu Fri Sat
                           1
   2   3   4   5   6   7   8
   9  10  11  12  13  14  15
  16  17  18  19  20  21  22
  23  24  25  26  27  28  29
  30  31
```

- calc

```
Lita > Lita: calc 999999999999999999 * 2525252
2525251999999999997474748.0
```

