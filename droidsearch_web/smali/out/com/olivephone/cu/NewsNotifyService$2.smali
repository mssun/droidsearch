.class Lcom/olivephone/cu/NewsNotifyService$2;
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
    iput-object p1, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-string v4, "\u91cd\u5927\u65b0\u95fb\u63d0\u9192"

    .line 83
    :cond_2
    :goto_2
    :try_start_2
    sget-boolean v4, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    if-eqz v4, :cond_2

    .line 84
    sget-boolean v4, Lcom/olivephone/util/PicNewsTemp;->isTrue:Z

    if-eqz v4, :cond_2

    .line 85
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Lcom/olivephone/cu/NewsNotifyService$2;->sleep(J)V

    .line 86
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-boolean v4, v4, Lcom/olivephone/cu/NewsNotifyService;->size:Z

    if-nez v4, :cond_23

    .line 87
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "T1Null"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_2

    .line 121
    :catch_1d
    move-exception v4

    move-object v1, v4

    .line 123
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 126
    return-void

    .line 89
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_23
    :try_start_23
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    sput-object v4, Lcom/olivephone/util/PicNewsTemp;->list_importNews:Ljava/util/ArrayList;

    .line 91
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/SearchedNews;

    .line 92
    .local v3, searchedNews:Lcom/olivephone/model/SearchedNews;
    invoke-virtual {v3}, Lcom/olivephone/model/SearchedNews;->getBigTitle()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, notify:Ljava/lang/String;
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/olivephone/cu/NewsNotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 94
    .local v0, audio:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Lcom/olivephone/cu/NewsNotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v5, Lcom/olivephone/cu/NewsNotifyService;->notificationManager:Landroid/app/NotificationManager;

    .line 96
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->tips_type:Ljava/lang/String;

    const-string v5, "xianglin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 98
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    invoke-virtual {v4, v0}, Lcom/olivephone/cu/NewsNotifyService;->ring(Landroid/media/AudioManager;)V

    .line 99
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v5, "\u91cd\u5927\u65b0\u95fb\u63d0\u9192"

    .line 100
    const/4 v6, 0x1

    .line 99
    #calls: Lcom/olivephone/cu/NewsNotifyService;->setDefaults(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v2, v6}, Lcom/olivephone/cu/NewsNotifyService;->access$0(Lcom/olivephone/cu/NewsNotifyService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "xl"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_7a
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->tips_type:Ljava/lang/String;

    const-string v5, "zhendong"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 104
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    invoke-virtual {v4, v0}, Lcom/olivephone/cu/NewsNotifyService;->vibrate(Landroid/media/AudioManager;)V

    .line 105
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v5, "\u91cd\u5927\u65b0\u95fb\u63d0\u9192"

    .line 106
    const/4 v6, 0x2

    .line 105
    #calls: Lcom/olivephone/cu/NewsNotifyService;->setDefaults(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v2, v6}, Lcom/olivephone/cu/NewsNotifyService;->access$0(Lcom/olivephone/cu/NewsNotifyService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "zd"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 108
    :cond_9c
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->tips_type:Ljava/lang/String;

    const-string v5, "xianglinorzhendong"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 110
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    invoke-virtual {v4, v0}, Lcom/olivephone/cu/NewsNotifyService;->ringAndVibrate(Landroid/media/AudioManager;)V

    .line 111
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    const-string v5, "\u91cd\u5927\u65b0\u95fb\u63d0\u9192"

    .line 112
    const/4 v6, -0x1

    .line 111
    #calls: Lcom/olivephone/cu/NewsNotifyService;->setDefaults(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v2, v6}, Lcom/olivephone/cu/NewsNotifyService;->access$0(Lcom/olivephone/cu/NewsNotifyService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "xl+zd"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    :cond_be
    iget-object v4, p0, Lcom/olivephone/cu/NewsNotifyService$2;->this$0:Lcom/olivephone/cu/NewsNotifyService;

    iget-object v4, v4, Lcom/olivephone/cu/NewsNotifyService;->tips_type:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_d1} :catch_1d

    goto/16 :goto_2
.end method
