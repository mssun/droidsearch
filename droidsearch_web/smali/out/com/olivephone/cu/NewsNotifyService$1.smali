.class Lcom/olivephone/cu/NewsNotifyService$1;
.super Ljava/lang/Thread;
.source "NewsNotifyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/NewsNotifyService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/NewsNotifyService;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/NewsNotifyService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 45
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    if-eqz v3, :cond_0

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    const-wide/32 v3, 0x493e0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_80

    .line 49
    :try_start_11
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v4, "USERINFO"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/olivephone/cu/NewsNotifyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v4, "keyword"

    const-string v5, "\u65b0\u95fb"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/olivephone/cu/NewsNotifyService;->keyword:Ljava/lang/String;

    .line 51
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kk="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v5, v5, Lcom/olivephone/cu/NewsNotifyService;->keyword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v4, "tips_type"

    const-string v5, "xianglin"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/olivephone/cu/NewsNotifyService;->tips_type:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v5, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v5, v5, Lcom/olivephone/cu/NewsNotifyService;->keyword:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/olivephone/constant/URLConstant;->importantNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/olivephone/parserxml/SearchedNewsHandler;

    invoke-direct {v5}, Lcom/olivephone/parserxml/SearchedNewsHandler;-><init>()V

    invoke-static {v4, v5}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_67} :catch_87
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_67} :catch_8d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_67} :catch_80

    .line 64
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_67
    :try_start_67
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v3, v3, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v3, v3, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService$1;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/NewsNotifyService;->size:Z

    .line 66
    const/4 v3, 0x1

    sput-boolean v3, Lcom/olivephone/util/PicNewsTemp;->isTrue:Z
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_0

    .line 69
    :catch_80
    move-exception v3

    move-object v1, v3

    .line 70
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 56
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catch_87
    move-exception v3

    move-object v0, v3

    .line 58
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_89
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_67

    .line 59
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_8d
    move-exception v3

    move-object v0, v3

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_92} :catch_80

    goto :goto_67
.end method
