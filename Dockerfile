# 使用 Node.js 作为基础镜像（Docsify 基于 Node.js）
FROM node:18-alpine

# 安装 Docsify CLI
RUN npm install -g docsify-cli@latest

# 创建文档目录（用于存放你的文档内容）
RUN mkdir -p /docs
WORKDIR /docs

# 暴露端口（Docsify 默认运行在 3000 端口）
EXPOSE 3000

# 启动命令：运行 Docsify 服务，监听所有 IP（0.0.0.0）
CMD ["docsify", "serve", "-p", "3000", "--host", "0.0.0.0", "."]
