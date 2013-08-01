.class Lcom/olivephone/cu/VideoNewsActivity$1;
.super Landroid/os/Handler;
.source "VideoNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/VideoNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 558
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 561
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 562
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_14

    .line 563
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_27

    .line 573
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->adapter:Lcom/olivephone/util/ImageAndTextListAdapter;

    invoke-virtual {v4}, Lcom/olivephone/util/ImageAndTextListAdapter;->notifyDataSetChanged()V

    .line 575
    .end local v0           #i:I
    :cond_14
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const v5, 0x7f07001d

    invoke-virtual {v4, v5}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/olivephone/cu/VideoNewsActivity;->isRefresh:Z

    .line 577
    return-void

    .line 565
    .restart local v0       #i:I
    :cond_27
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/VideoNews;

    .line 568
    .local v3, videoNews:Lcom/olivephone/model/VideoNews;
    new-instance v1, Lcom/olivephone/util/ImageAndText;

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getPubTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getBigTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/olivephone/model/VideoNews;->getNewsDesc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/olivephone/util/ImageAndText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v1, iat:Lcom/olivephone/util/ImageAndText;
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$1;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
