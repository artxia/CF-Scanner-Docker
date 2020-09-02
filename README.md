# CF-Scanner-Docker

在群晖docker自动执行 cloudflare-scanner 进行IP筛选

默认根据你最新一次执行时间后每24小时执行一次

 ```
 docker run -d --name cf-scanner-docker1 \
  -e INTERVAL="86400" \
  -v /config/config.yaml:/config.yaml \
  -v /config/ip.txt:/ip.txt \
  -v /config/result.txt:/result.txt \
  artxia/cf-scanner-docker:v0.1.0
 ```
 INTERVAL 变量是再次运行的时间间隔，单位s，默认86400s,24小时

 这里对三个文件进行挂载，方便修改：

 config.yaml 是配置文件，详见原项目

 ip.txt 是需要测试的ip，一般来源cf官网

 result.txt 是测试后的结果，方便查看



 原项目：[cloudflare-scanner](https://github.com/gh-tt/cloudflare-scanner)
