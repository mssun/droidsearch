.class Lcom/olivephone/cu/DownLoadActivity$13;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->loadDownloader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field iv_pause:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$13;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget v0, p1, Lcom/olivephone/cu/DownLoadActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/DownLoadActivity$13;->index:I

    .line 486
    iget-object v0, p1, Lcom/olivephone/cu/DownLoadActivity;->iv_pause_q:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$13;->iv_pause:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/DownLoadActivity$13;)Lcom/olivephone/cu/DownLoadActivity;
    .registers 2
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$13;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 489
    sget-object v3, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    iget v4, p0, Lcom/olivephone/cu/DownLoadActivity$13;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/DownLoadFile;

    .line 490
    .local v0, dlf:Lcom/olivephone/model/DownLoadFile;
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->isPause()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 491
    const-string v3, "downloadFileSize"

    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, tempSize:Ljava/lang/String;
    sget-object v3, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    iget v4, p0, Lcom/olivephone/cu/DownLoadActivity$13;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 494
    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity$13;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 495
    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity$13;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity$13;->iv_pause:Landroid/widget/ImageView;

    const v4, 0x7f02002d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    invoke-virtual {v0, v5}, Lcom/olivephone/model/DownLoadFile;->setPause(Z)V

    .line 499
    new-instance v1, Lcom/olivephone/cu/DownLoadActivity$13$1;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/DownLoadActivity$13$1;-><init>(Lcom/olivephone/cu/DownLoadActivity$13;)V

    .line 509
    .local v1, handler:Landroid/os/Handler;
    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$13$2;

    invoke-direct {v3, p0, v1}, Lcom/olivephone/cu/DownLoadActivity$13$2;-><init>(Lcom/olivephone/cu/DownLoadActivity$13;Landroid/os/Handler;)V

    .line 520
    invoke-virtual {v3}, Lcom/olivephone/cu/DownLoadActivity$13$2;->start()V

    .line 525
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #tempSize:Ljava/lang/String;
    :goto_4b
    return v5

    .line 522
    :cond_4c
    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity$13;->iv_pause:Landroid/widget/ImageView;

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/olivephone/model/DownLoadFile;->setPause(Z)V

    goto :goto_4b
.end method
