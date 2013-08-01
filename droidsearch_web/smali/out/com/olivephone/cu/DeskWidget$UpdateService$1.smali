.class Lcom/olivephone/cu/DeskWidget$UpdateService$1;
.super Ljava/lang/Thread;
.source "DeskWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/DeskWidget$UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DeskWidget$UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 73
    :goto_0
    const-wide/16 v4, 0x7530

    :try_start_2
    invoke-static {v4, v5}, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->sleep(J)V

    .line 74
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3b

    .line 75
    :cond_15
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v6, v6, Lcom/olivephone/cu/DeskWidget$UpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030001

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    .line 76
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070005

    const-string v6, "\u8bf7\u68c0\u67e5\u7f51\u8def"

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_35} :catch_cb

    .line 99
    :cond_35
    :goto_35
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    invoke-virtual {v4}, Lcom/olivephone/cu/DeskWidget$UpdateService;->update()V

    goto :goto_0

    .line 78
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    iget-object v5, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget v5, v5, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/TextNews;

    .line 79
    .local v3, xhNews:Lcom/olivephone/model/TextNews;
    sput-object v3, Lcom/olivephone/util/PicNewsTemp;->textNews:Lcom/olivephone/model/TextNews;

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/olivephone/cu/XHNewsActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v3}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v4, "id"

    iget-object v5, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget v5, v5, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 87
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v6, v6, Lcom/olivephone/cu/DeskWidget$UpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030001

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    .line 88
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070004

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->updateViews:Landroid/widget/RemoteViews;

    const v5, 0x7f070005

    invoke-virtual {v3}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget v5, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    .line 91
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget v4, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I

    iget-object v5, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    iget-object v5, v5, Lcom/olivephone/cu/DeskWidget$UpdateService;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_35

    .line 92
    iget-object v4, p0, Lcom/olivephone/cu/DeskWidget$UpdateService$1;->this$1:Lcom/olivephone/cu/DeskWidget$UpdateService;

    const/4 v5, 0x0

    iput v5, v4, Lcom/olivephone/cu/DeskWidget$UpdateService;->i:I
    :try_end_c9
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_c9} :catch_cb

    goto/16 :goto_35

    .line 95
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    .end local v3           #xhNews:Lcom/olivephone/model/TextNews;
    :catch_cb
    move-exception v4

    move-object v0, v4

    .line 97
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_35
.end method
