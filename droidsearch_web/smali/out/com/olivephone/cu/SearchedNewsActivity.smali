.class public Lcom/olivephone/cu/SearchedNewsActivity;
.super Landroid/app/Activity;
.source "SearchedNewsActivity.java"


# instance fields
.field image:Lcom/olivephone/model/Image;

.field iv_picnews:Landroid/widget/ImageView;

.field layout_pic:Landroid/widget/LinearLayout;

.field lin_textnews:Landroid/widget/LinearLayout;

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

.field list_searchednews:Ljava/util/List;
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

.field pd_search:Landroid/app/ProgressDialog;

.field pd_searchednews:Landroid/app/ProgressDialog;

.field searchedNews:Lcom/olivephone/model/SearchedNews;

.field searchedNewsHandler:Landroid/os/Handler;

.field size:I

.field tv_picnews:Landroid/widget/TextView;

.field urls:[Ljava/lang/String;

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->list:Ljava/util/List;

    .line 49
    return-void
.end method

.method private searchnews(Ljava/lang/String;)V
    .registers 4
    .parameter "keyword"

    .prologue
    .line 121
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    .line 122
    iget-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u67e5\u627e\u65b0\u95fb\uff0c\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 125
    iget-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->pd_search:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 127
    new-instance v0, Lcom/olivephone/cu/SearchedNewsActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/olivephone/cu/SearchedNewsActivity$2;-><init>(Lcom/olivephone/cu/SearchedNewsActivity;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/olivephone/cu/SearchedNewsActivity$2;->start()V

    .line 164
    new-instance v0, Lcom/olivephone/cu/SearchedNewsActivity$3;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/SearchedNewsActivity$3;-><init>(Lcom/olivephone/cu/SearchedNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNewsHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/SearchedNewsActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/olivephone/cu/SearchedNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, keyword:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity;->list_searchednews:Ljava/util/List;

    .line 74
    const v2, 0x7f07001f

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/SearchedNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    .line 76
    invoke-direct {p0, v1}, Lcom/olivephone/cu/SearchedNewsActivity;->searchnews(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/olivephone/cu/SearchedNewsActivity;->lv_newsresult:Landroid/widget/ListView;

    new-instance v3, Lcom/olivephone/cu/SearchedNewsActivity$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/SearchedNewsActivity$1;-><init>(Lcom/olivephone/cu/SearchedNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method
