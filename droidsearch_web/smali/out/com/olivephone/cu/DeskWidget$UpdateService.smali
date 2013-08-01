.class public Lcom/olivephone/cu/DeskWidget$UpdateService;
.super Landroid/app/Service;
.source "DeskWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/DeskWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# instance fields
.field i:I

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

.field mContext:Landroid/content/Context;

.field mThread:Ljava/lang/Thread;

.field updateViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    .line 67
    new-instance v0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/DeskWidget$UpdateService$1;-><init>(Lcom/olivephone/cu/DeskWidget$UpdateService;)V

    iput-object v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->mThread:Ljava/lang/Thread;

    .line 49
    return-void
.end method

.method private buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 9
    .parameter "context"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->mContext:Landroid/content/Context;

    .line 109
    :try_start_2
    invoke-static {p1}, Lcom/olivephone/constant/URLConstant;->xhNews(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/olivephone/parserxml/TextNewsHandler;

    invoke-direct {v5}, Lcom/olivephone/parserxml/TextNewsHandler;-><init>()V

    invoke-static {v4, v5}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    .line 110
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_38

    .line 111
    :cond_1d
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030001

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    .line 112
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070005

    const-string v6, "\u8bf7\u68c0\u67e5\u7f51\u8def"

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_92

    .line 132
    :goto_35
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    return-object v4

    .line 114
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/TextNews;

    .line 115
    .local v3, xhNews:Lcom/olivephone/model/TextNews;
    sput-object v3, Lcom/olivephone/util/PicNewsTemp;->textNews:Lcom/olivephone/model/TextNews;

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/olivephone/cu/XHNewsActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v3}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p1, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 123
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030001

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    .line 124
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070004

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 126
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070005

    invoke-virtual {v3}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_91} :catch_92

    goto :goto_35

    .line 128
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    .end local v3           #xhNews:Lcom/olivephone/model/TextNews;
    :catch_92
    move-exception v4

    move-object v0, v4

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 56
    invoke-direct {p0, p0}, Lcom/olivephone/cu/DeskWidget$UpdateService;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    .line 57
    invoke-virtual {p0}, Lcom/olivephone/cu/DeskWidget$UpdateService;->update()V

    .line 58
    iget-object v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_16

    .line 60
    iget-object v0, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    :cond_16
    return-void
.end method

.method public update()V
    .registers 4

    .prologue
    .line 63
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/olivephone/cu/DeskWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v1, thisWidget:Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 65
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    iget-object v2, p0, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 66
    return-void
.end method
