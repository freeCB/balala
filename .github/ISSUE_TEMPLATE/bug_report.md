name: 🐞Bug Report/🐞Bug 反馈
description: File a bug report/将您所看到的Bug提交
title: "Add a title/添加标题"
labels: ['bug']
body:
  - type: markdown
    attributes:
      value: |
        Thanks for taking the time to fill out this bug report!
        Check out this [link](https://github.com/toeverything/AFFiNE/blob/canary/docs/issue-triaging.md)
        to learn how we manage issues and when your issue will be processed.
        感谢您对产品的支持~
        可以查看此链接 [link](https://github.com/toeverything/AFFiNE/blob/canary/docs/issue-triaging.md)
        更有利于加深您对本产品的了解
  - type: textarea
    id: what-happened
    attributes:
      label: What happened?/Bug描述？
      description: Also tell us, what did you expect to happen?/将Bug内容进行描述
      placeholder: Tell us what you see!/Bug详情描述
    validations:
      required: true
  - type: dropdown
    id: browsers
    attributes:
      label: What's the version of your bug?/发生Bug所在的版本是？
      multiple: true
      options:
        - v1.3.4.1
        - v1.3.3.2
        - v1.3.3.1
        - I don't know the version./我不知道哪个版本
  - type: textarea
    id: logs
    attributes:
      label: Relevant log output/相关日志输出
      description: |
        Please copy and paste any relevant log output. This will be automatically formatted into code, so no need for backticks.
        您可以复制黏贴跟Bug相关的日志输出。在这将自动格式化为代码。
      render: shell
  - type: textarea
    attributes:
      label: Anything else?/其他相关资料
      description: |
        Links? References? Anything that will give us more context about the issue you are encountering!
        您可以在这里贴其他跟问题相关的内容，更有助于我们了解您的问题
        Tip: You can attach images here
        小贴士：您可以在这附加图片
