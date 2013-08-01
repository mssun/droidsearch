.class Lcom/olivephone/cu/VideoNewsActivity$13;
.super Landroid/os/Handler;
.source "VideoNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->updateNewsList()V
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 608
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 611
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v4, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    .line 612
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_37

    .line 613
    :cond_19
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    const-string v4, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 615
    const-string v4, "\u7f51\u7edc\u6062\u590d\u540e\u9875\u9762\u4f1a\u7ee7\u7eed\u8f7d\u5165"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 616
    const-string v4, "\u786e\u5b9a"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 629
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 648
    :goto_36
    return-void

    .line 631
    :cond_37
    const-string v3, "video_news.size()"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    .line 633
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5b
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_91

    .line 639
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    new-instance v4, Lcom/olivephone/util/ImageAndTextListAdapter;

    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const v6, 0x7f03001e

    iget-object v7, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v7, v7, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Lcom/olivephone/util/ImageAndTextListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v4, v3, Lcom/olivephone/cu/VideoNewsActivity;->adapter:Lcom/olivephone/util/ImageAndTextListAdapter;

    .line 643
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/VideoNewsActivity;->adapter:Lcom/olivephone/util/ImageAndTextListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 644
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->iv_detailimg:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 646
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_36

    .line 634
    :cond_91
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/olivephone/model/VideoNews;

    .line 635
    .local v2, videoNews:Lcom/olivephone/model/VideoNews;
    new-instance v1, Lcom/olivephone/util/ImageAndText;

    invoke-virtual {v2}, Lcom/olivephone/model/VideoNews;->getPubTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/olivephone/model/VideoNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/olivephone/model/VideoNews;->getImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/olivephone/model/VideoNews;->getNewsDesc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/olivephone/util/ImageAndText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .local v1, iat:Lcom/olivephone/util/ImageAndText;
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$13;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v3, "lyList"

    invoke-virtual {v2}, Lcom/olivephone/model/VideoNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b
.end method
