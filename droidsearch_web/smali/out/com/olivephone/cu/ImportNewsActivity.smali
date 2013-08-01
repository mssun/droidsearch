.class public Lcom/olivephone/cu/ImportNewsActivity;
.super Landroid/app/Activity;
.source "ImportNewsActivity.java"


# instance fields
.field importNewsHandler:Landroid/os/Handler;

.field keyword:Ljava/lang/String;

.field list_result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_temp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lv_newsresult:Landroid/widget/ListView;

.field pd_importantNews:Landroid/app/ProgressDialog;

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadImportantNews()V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const-string v11, "pubTime"

    const-string v10, "bigTitle"

    .line 81
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    iget-object v1, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_result:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_85

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, list_important_news:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_temp:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/olivephone/model/SearchedNews;

    .line 89
    .local v8, searchedNews:Lcom/olivephone/model/SearchedNews;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v6, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pubTime"

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "T="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getPubTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "bigTitle"

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getBigTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "B="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/olivephone/model/SearchedNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030017

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "pubTime"

    aput-object v11, v4, v5

    const/4 v1, 0x1

    const-string v5, "bigTitle"

    aput-object v10, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_94

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 98
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/olivephone/cu/ImportNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    return-void

    .line 82
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v2           #list_important_news:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #searchedNews:Lcom/olivephone/model/SearchedNews;
    :cond_85
    iget-object v1, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_temp:Ljava/util/List;

    iget-object v3, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_result:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 96
    :array_94
    .array-data 0x4
        0x34t 0x0t 0x7t 0x7ft
        0x33t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/olivephone/cu/ImportNewsActivity;->setContentView(I)V

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/olivephone/util/PicNewsTemp;->isCancel:Z

    .line 35
    sput-boolean v1, Lcom/olivephone/util/PicNewsTemp;->isTrue:Z

    .line 36
    sput-boolean v1, Lcom/olivephone/util/PicNewsTemp;->isGetData:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_result:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/olivephone/util/PicNewsTemp;->list_importNews:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_result:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/ImportNewsActivity;->list_temp:Ljava/util/List;

    .line 40
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/olivephone/cu/ImportNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/olivephone/cu/ImportNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    .line 42
    invoke-direct {p0}, Lcom/olivephone/cu/ImportNewsActivity;->loadImportantNews()V

    .line 45
    iget-object v0, p0, Lcom/olivephone/cu/ImportNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    new-instance v1, Lcom/olivephone/cu/ImportNewsActivity$1;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/ImportNewsActivity$1;-><init>(Lcom/olivephone/cu/ImportNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method
