.class Lcom/olivephone/cu/RSSNewsActivity$9;
.super Landroid/os/Handler;
.source "RSSNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->loadNewsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 394
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const-string v13, "title"

    const-string v12, "pubDate"

    const-string v11, "description"

    .line 397
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, v3, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    .line 398
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_86

    .line 400
    const-string v1, "list_news.size"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3f
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_87

    .line 412
    const-string v1, "list.size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 415
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 416
    const v3, 0x7f030011

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "pubDate"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    .line 417
    const-string v9, "title"

    aput-object v13, v4, v5

    const/4 v5, 0x2

    const-string v9, "description"

    aput-object v11, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_b8

    .line 414
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 421
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #i:I
    :cond_86
    return-void

    .line 404
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6       #i:I
    :cond_87
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$9;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/olivephone/model/RssItem;

    .line 405
    .local v8, rssItem:Lcom/olivephone/model/RssItem;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pubDate"

    invoke-virtual {v8}, Lcom/olivephone/model/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "title"

    invoke-virtual {v8}, Lcom/olivephone/model/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "description"

    invoke-virtual {v8}, Lcom/olivephone/model/RssItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 417
    nop

    :array_b8
    .array-data 0x4
        0x27t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
        0x28t 0x0t 0x7t 0x7ft
    .end array-data
.end method
