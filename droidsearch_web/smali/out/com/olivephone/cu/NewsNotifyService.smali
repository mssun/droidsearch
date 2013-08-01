.class public Lcom/olivephone/cu/NewsNotifyService;
.super Landroid/app/Service;
.source "NewsNotifyService.java"


# instance fields
.field flag:Z

.field keyword:Ljava/lang/String;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field notificationManager:Landroid/app/NotificationManager;

.field size:Z

.field tips_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/NewsNotifyService;->list:Ljava/util/List;

    .line 30
    iput-boolean v1, p0, Lcom/olivephone/cu/NewsNotifyService;->flag:Z

    .line 31
    iput-boolean v1, p0, Lcom/olivephone/cu/NewsNotifyService;->size:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/NewsNotifyService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/olivephone/cu/NewsNotifyService;->setDefaults(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setDefaults(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "tickerText"
    .parameter "contentText"
    .parameter "defaults"

    .prologue
    const/4 v6, 0x0

    .line 136
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020014

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 138
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/olivephone/cu/ImportNewsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 142
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, "\u91cd\u5927\u65b0\u95fb\u63d0\u9192"

    invoke-virtual {v2, p0, v3, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 144
    iput p3, v2, Landroid/app/Notification;->defaults:I

    .line 145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "defaults="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 147
    sget-boolean v3, Lcom/olivephone/util/PicNewsTemp;->isCancel:Z

    if-eqz v3, :cond_48

    .line 148
    iget-object v3, p0, Lcom/olivephone/cu/NewsNotifyService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 149
    sput-boolean v6, Lcom/olivephone/util/PicNewsTemp;->isCancel:Z

    .line 151
    :cond_48
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/olivephone/cu/NewsNotifyService$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/NewsNotifyService$1;-><init>(Lcom/olivephone/cu/NewsNotifyService;)V

    .line 75
    invoke-virtual {v0}, Lcom/olivephone/cu/NewsNotifyService$1;->start()V

    .line 78
    new-instance v0, Lcom/olivephone/cu/NewsNotifyService$2;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/NewsNotifyService$2;-><init>(Lcom/olivephone/cu/NewsNotifyService;)V

    .line 128
    invoke-virtual {v0}, Lcom/olivephone/cu/NewsNotifyService$2;->start()V

    .line 131
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method protected ring(Landroid/media/AudioManager;)V
    .registers 4
    .parameter "audio"

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 162
    invoke-virtual {p1, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 165
    return-void
.end method

.method protected ringAndVibrate(Landroid/media/AudioManager;)V
    .registers 4
    .parameter "audio"

    .prologue
    const/4 v1, 0x1

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 157
    invoke-virtual {p1, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 158
    return-void
.end method

.method protected vibrate(Landroid/media/AudioManager;)V
    .registers 4
    .parameter "audio"

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 170
    invoke-virtual {p1, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 172
    return-void
.end method
