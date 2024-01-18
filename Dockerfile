FROM  python:3.8-slim

ENV TERM xterm-256color
# 设置环境变量

# 域名后缀，默认值为 'cn'
ENV DOMAINM_SUFFIX cn

# 查询之间的休眠时间，默认值为 1 秒
ENV SLEEP_TIME 1

# 查询超时时间，默认值为 2 秒
ENV TIMEOUT 2

# 域名最大长度，默认值为 7
ENV DOMAIN_NAME_LENGTH 7

# 域名字典文件路径，默认值为 './dictMap/26pl1+2+3+4.txt'
ENV DOMAIN_DICTIONARY './dictMap/26pl1+2+3+4.txt'
# 设置工作目录
WORKDIR /app
# 将代码复制到容器中
COPY /dictMap /app/dictMap
COPY /logs /app/logs
COPY main.py top_level_domain_name_suffix /app

# 定义启动命令
CMD python3 main.py
# ENTRYPOINT ["python3", "/app/main.py"]


