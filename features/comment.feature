# encoding: UTF-8
# language: zh-CN

功能: 评论审核
  作为一个博客的普通用户
  我希望可以给文章提交评论

  背景:
    假如普通用户提交了一个评论

  场景: 必须审核普通用户提交的评论
    当这个评论将等待被审核
    那么这个评论不会被其他人公开看到

  场景: 普通用户提交的评论被审核通过后
    当这个评论被编辑审核通过
    那么这个评论将被其他人公开看到
