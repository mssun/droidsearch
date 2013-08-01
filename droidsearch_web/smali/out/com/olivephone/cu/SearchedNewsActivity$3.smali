.class Lcom/olivephone/cu/SearchedNewsActivity$3;
.super Landroid/os/Handler;
.source "SearchedNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchedNewsActivity;->searchnews(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SearchedNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchedNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 164
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const-string v12, "pubTime"

    const-string v11, "bigTitle"

    .line 168
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_43

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, list_searched_news:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    :goto_16
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedNewsActivity;->list_searchednews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_55

    .line 181
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 182
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 183
    const v3, 0x7f030017

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 184
    const-string v9, "pubTime"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v9, "bigTitle"

    aput-object v11, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_86

    .line 181
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 186
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    return-void

    .line 169
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v2           #list_searched_news:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_43
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedNewsActivity;->list_searchednews:Ljava/util/List;

    iget-object v3, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 173
    .restart local v2       #list_searched_news:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_55
    iget-object v1, p0, Lcom/olivephone/cu/SearchedNewsActivity$3;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchedNewsActivity;->list_searchednews:Ljava/util/List;

    .line 174
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/olivephone/model/SearchedNews;

    .line 175
    .local v8, searchedNews:Lcom/olivephone/model/SearchedNews;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getBigTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v6, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pubTime"

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "bigTitle"

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getBigTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 184
    nop

    :array_86
    .array-data 0x4
        0x34t 0x0t 0x7t 0x7ft
        0x33t 0x0t 0x7t 0x7ft
    .end array-data
.end method
