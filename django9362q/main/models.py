#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class xuesheng(BaseModel):
    __doc__ = u'''xuesheng'''
    __tablename__ = 'xuesheng'

    __loginUser__='xuehao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='xuehao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='学号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    nianji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='年级' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    '''
    xuehao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    shouji=VARCHAR
    nianji=VARCHAR
    banji=VARCHAR
    '''
    class Meta:
        db_table = 'xuesheng'
        verbose_name = verbose_name_plural = '学生'
class jiaoshi(BaseModel):
    __doc__ = u'''jiaoshi'''
    __tablename__ = 'jiaoshi'

    __loginUser__='gonghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='gonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='是'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    gonghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='工号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    zhicheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='职称' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    '''
    gonghao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    zhicheng=VARCHAR
    shouji=VARCHAR
    '''
    class Meta:
        db_table = 'jiaoshi'
        verbose_name = verbose_name_plural = '教师'
class exampaper(BaseModel):
    __doc__ = u'''exampaper'''
    __tablename__ = 'exampaper'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='在线考试名称' )
    time=models.IntegerField  ( null=False, unique=False, verbose_name='考试时长(分钟)' )
    status=models.IntegerField  ( null=False, unique=False,default='0', verbose_name='在线考试状态' )
    '''
    name=VARCHAR
    time=Integer
    status=Integer
    '''
    class Meta:
        db_table = 'exampaper'
        verbose_name = verbose_name_plural = '在线考试表'
class examquestion(BaseModel):
    __doc__ = u'''examquestion'''
    __tablename__ = 'examquestion'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    paperid=models.BigIntegerField  ( null=False, unique=False, verbose_name='所属在线考试id（外键）' )
    papername=models.CharField ( max_length=255,null=False, unique=False, verbose_name='在线考试名称' )
    questionname=models.CharField ( max_length=255,null=False, unique=False, verbose_name='试题名称' )
    options=models.TextField   (  null=True, unique=False, verbose_name='选项，json字符串' )
    score=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='分值' )
    answer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='正确答案' )
    analysis=models.TextField   (  null=True, unique=False, verbose_name='答案解析' )
    type=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）' )
    sequence=models.BigIntegerField  (  null=True, unique=False,default='100', verbose_name='试题排序，值越大排越前面' )
    '''
    paperid=BigInteger
    papername=VARCHAR
    questionname=VARCHAR
    options=Text
    score=BigInteger
    answer=VARCHAR
    analysis=Text
    type=BigInteger
    sequence=BigInteger
    '''
    class Meta:
        db_table = 'examquestion'
        verbose_name = verbose_name_plural = '试题表'
class examrecord(BaseModel):
    __doc__ = u'''examrecord'''
    __tablename__ = 'examrecord'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __examinationPaper__='是'#[examinationPaper:是/否]后台生成普通试卷功能
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    paperid=models.BigIntegerField  ( null=False, unique=False, verbose_name='在线考试id（外键）' )
    papername=models.CharField ( max_length=255,null=False, unique=False, verbose_name='在线考试名称' )
    questionid=models.BigIntegerField  ( null=False, unique=False, verbose_name='试题id（外键）' )
    questionname=models.CharField ( max_length=255,null=False, unique=False, verbose_name='试题名称' )
    options=models.TextField   (  null=True, unique=False, verbose_name='选项，json字符串' )
    score=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='分值' )
    answer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='正确答案' )
    analysis=models.TextField   (  null=True, unique=False, verbose_name='答案解析' )
    myscore=models.BigIntegerField  ( null=False, unique=False,default='0', verbose_name='试题得分' )
    myanswer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='考生答案' )
    '''
    userid=BigInteger
    username=VARCHAR
    paperid=BigInteger
    papername=VARCHAR
    questionid=BigInteger
    questionname=VARCHAR
    options=Text
    score=BigInteger
    answer=VARCHAR
    analysis=Text
    myscore=BigInteger
    myanswer=VARCHAR
    '''
    class Meta:
        db_table = 'examrecord'
        verbose_name = verbose_name_plural = '考试记录表'
