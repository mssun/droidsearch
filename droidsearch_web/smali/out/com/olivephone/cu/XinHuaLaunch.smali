.class public Lcom/olivephone/cu/XinHuaLaunch;
.super Landroid/app/Activity;
.source "XinHuaLaunch.java"


# instance fields
.field imageCount:Ljava/lang/String;

.field imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field textCount:Ljava/lang/String;

.field textList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field updatetype:Ljava/lang/String;

.field versionUrl:Ljava/lang/String;

.field videoCount:Ljava/lang/String;

.field videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x400

    const/4 v10, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/olivephone/cu/XinHuaLaunch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 45
    .local v4, mActivityManager:Landroid/app/ActivityManager;
    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 46
    .local v5, mRunningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x1

    .line 47
    .local v3, i:I
    const/4 v2, 0x1

    .line 49
    .local v2, flag:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_81

    .line 59
    :goto_20
    invoke-virtual {p0, v10}, Lcom/olivephone/cu/XinHuaLaunch;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/olivephone/cu/XinHuaLaunch;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 64
    const v7, 0x7f03000e

    invoke-virtual {p0, v7}, Lcom/olivephone/cu/XinHuaLaunch;->setContentView(I)V

    .line 70
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/olivephone/cu/NewsNotifyService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v6, notifyIntent:Landroid/content/Intent;
    const-string v7, "keyword"

    new-instance v8, Ljava/lang/String;

    const-string v9, "c"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v7, "tips_type"

    new-instance v8, Ljava/lang/String;

    const-string v9, "xianglin"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    sput-boolean v10, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    .line 74
    invoke-virtual {p0, v6}, Lcom/olivephone/cu/XinHuaLaunch;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/olivephone/cu/LoadChannelService;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, channelIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/olivephone/cu/XinHuaLaunch;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    const-string v7, "Demo"

    const-string v8, "XinHuaLaunch start0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v2, :cond_71

    .line 79
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/xxx/yyy/MyService;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/olivephone/cu/XinHuaLaunch;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    :cond_71
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/olivephone/cu/XinHuaLaunch$1;

    invoke-direct {v8, p0}, Lcom/olivephone/cu/XinHuaLaunch$1;-><init>(Lcom/olivephone/cu/XinHuaLaunch;)V

    .line 169
    const-wide/16 v9, 0xbb8

    .line 81
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void

    .line 49
    .end local v1           #channelIntent:Landroid/content/Intent;
    .end local v6           #notifyIntent:Landroid/content/Intent;
    :cond_81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 52
    .local v0, amTask:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v8, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/olivephone/cu/XinHuaLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_20
.end method
