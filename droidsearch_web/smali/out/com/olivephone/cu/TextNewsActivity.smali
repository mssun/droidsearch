.class public Lcom/olivephone/cu/TextNewsActivity;
.super Landroid/app/Activity;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/olivephone/cu/TextNewsActivity$LoadThread;
    }
.end annotation


# instance fields
.field _handler:Landroid/os/Handler;

.field adv:Lcom/olivephone/model/Advertise;

.field advertise:Lcom/olivephone/model/Advertise;

.field al_textnews:Landroid/widget/AbsoluteLayout;

.field bt_back_newlist:Landroid/widget/Button;

.field bt_enshrineTextNews:Landroid/widget/Button;

.field bt_shareTextViews:Landroid/widget/Button;

.field cateID:Ljava/lang/String;

.field checked_rss:[Ljava/lang/String;

.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field detector:Landroid/view/GestureDetector;

.field et_phone:Landroid/widget/EditText;

.field et_searchnews:Landroid/widget/EditText;

.field fl_text_news:Landroid/widget/FrameLayout;

.field handler1:Landroid/os/Handler;

.field handler_firstview:Landroid/os/Handler;

.field handler_webview:Landroid/os/Handler;

.field handleradv:Landroid/os/Handler;

.field handlercate:Landroid/os/Handler;

.field handlertextnews:Landroid/os/Handler;

.field i:I

.field inflater1:Landroid/view/LayoutInflater;

.field inflater2:Landroid/view/LayoutInflater;

.field isClickable:Z

.field isFirstRun:Z

.field isLast:Z

.field isRefresh:Z

.field isext:Z

.field item:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iv_bolan:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_zhongxin:Landroid/widget/ImageView;

.field list_adv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_cate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_channel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_text_news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field ll_menu:Landroid/widget/LinearLayout;

.field lv_text_news:Landroid/widget/ListView;

.field message:Ljava/lang/String;

.field news_id:I

.field page:I

.field pd_Adv:Landroid/app/ProgressDialog;

.field pd_cate:Landroid/app/ProgressDialog;

.field pd_channel:Landroid/app/ProgressDialog;

.field pd_loadNews:Landroid/app/ProgressDialog;

.field pd_new_detail:Landroid/app/ProgressDialog;

.field pd_newlist:Landroid/app/ProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field rss_content:[Ljava/lang/String;

.field selectView:Lcom/olivephone/mywidget/SelectView;

.field title:Ljava/lang/String;

.field tna:Lcom/olivephone/adapter/TextNewsAdapter;

.field vf_newcontent:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/olivephone/cu/TextNewsActivity;->isClickable:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    .line 106
    iput-boolean v1, p0, Lcom/olivephone/cu/TextNewsActivity;->isRefresh:Z

    .line 107
    iput-boolean v1, p0, Lcom/olivephone/cu/TextNewsActivity;->isFirstRun:Z

    .line 112
    iput v1, p0, Lcom/olivephone/cu/TextNewsActivity;->page:I

    .line 717
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$1;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->_handler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->popMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->tool()V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->showNewsContent()V

    return-void
.end method

.method static synthetic access$3(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->hiddenNewList()V

    return-void
.end method

.method static synthetic access$4(Lcom/olivephone/cu/TextNewsActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/olivephone/cu/TextNewsActivity;->loadNews(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->showNewList()V

    return-void
.end method

.method static synthetic access$6(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->hiddenNewsContent()V

    return-void
.end method

.method static synthetic access$7(Lcom/olivephone/cu/TextNewsActivity;Landroid/webkit/WebView;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/olivephone/cu/TextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V

    return-void
.end method

.method private hiddenNewList()V
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1060
    return-void
.end method

.method private hiddenNewsContent()V
    .registers 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1054
    return-void
.end method

.method private loadChannelData()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const-string v9, "text"

    const-string v8, "-"

    const-string v5, "textrss_list_size"

    const-string v6, ""

    .line 1070
    const-string v3, "loadChannelData"

    const-string v4, "loadChannelData()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v3, "USERINFO"

    invoke-virtual {p0, v3, v7}, Lcom/olivephone/cu/TextNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1072
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "textrss_list_size"

    const-string v3, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1073
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1074
    const-string v4, "\u7cfb\u7edf\u63d0\u793a"

    .line 1073
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1074
    const-string v4, "\u9891\u9053\u8bbe\u7f6e\u4e3a\u7a7a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1075
    const-string v4, "\u8bbe\u7f6e\u9891\u9053"

    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$15;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$15;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1083
    const-string v4, "\u9000\u51fa"

    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$16;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$16;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1089
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1139
    :cond_50
    :goto_50
    return-void

    .line 1092
    :cond_51
    const-string v3, "textrss_list_size"

    const-string v3, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 1093
    const-string v3, "textrss_list_size"

    const-string v3, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1095
    :cond_6b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    const-string v4, "\u7cfb\u7edf\u63d0\u793a"

    .line 1095
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1096
    const-string v4, "\u7f51\u7edc\u7e41\u5fd9"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1097
    const-string v4, "\u91cd\u8bd5"

    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$17;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$17;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1106
    const-string v4, "\u9000\u51fa"

    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$18;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$18;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1124
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_50

    .line 1129
    :cond_96
    const-string v3, "textrss_list_size"

    const-string v3, ""

    .line 1128
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1130
    .local v1, rss_list_size:I
    const-string v3, "rss_list_size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/olivephone/cu/TextNewsActivity;->checked_rss:[Ljava/lang/String;

    .line 1132
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    .line 1134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_bd
    if-ge v0, v1, :cond_50

    .line 1135
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity;->checked_rss:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "text"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    aput-object v4, v3, v0

    .line 1136
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "text"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd
.end method

.method private loadFirstNews(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 772
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/olivephone/cu/TextNewsActivity$11;-><init>(Lcom/olivephone/cu/TextNewsActivity;I)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->handler_firstview:Landroid/os/Handler;

    .line 808
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$12;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$12;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 816
    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity$12;->start()V

    .line 818
    iget v0, p0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    invoke-direct {p0, v0}, Lcom/olivephone/cu/TextNewsActivity;->loadNews(I)V

    .line 819
    return-void
.end method

.method private loadNews(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 824
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/olivephone/cu/TextNewsActivity$13;-><init>(Lcom/olivephone/cu/TextNewsActivity;I)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->handler_webview:Landroid/os/Handler;

    .line 954
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$14;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$14;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 962
    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity$14;->start()V

    .line 964
    return-void
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1451
    .line 1452
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/TextNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1451
    iput-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 1453
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1454
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 1455
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1454
    iput-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    .line 1458
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1459
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1460
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1461
    iget-object v5, p0, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1462
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1464
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1463
    check-cast v2, Landroid/widget/ImageView;

    .line 1465
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1466
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1467
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$23;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$23;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1478
    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$24;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$24;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1490
    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$25;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$25;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1500
    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$26;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/TextNewsActivity$26;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1526
    return-void
.end method

.method private setWebViewProperty(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "wv_newcontent"

    .prologue
    const/4 v1, 0x1

    .line 759
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V

    .line 760
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 761
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 762
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 763
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 764
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 765
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 766
    return-void
.end method

.method private showNewList()V
    .registers 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1066
    return-void
.end method

.method private showNewsContent()V
    .registers 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1048
    return-void
.end method

.method private tool()V
    .registers 4

    .prologue
    .line 558
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\u6536\u85cf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5206\u4eab"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8fd4\u56de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v0, v1

    .line 560
    .local v0, cs:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 562
    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$10;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$10;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 561
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 686
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 687
    return-void
.end method

.method private updateChannel()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 1143
    const-string v0, "updateChannel"

    const-string v1, "updateChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->loadChannelData()V

    .line 1145
    const-string v0, "loadChannelData"

    const-string v1, "loadChannelDataEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1d

    .line 1316
    :cond_1c
    return-void

    .line 1175
    :cond_1d
    new-instance v0, Lcom/olivephone/mywidget/SelectView;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/olivephone/mywidget/SelectView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    .line 1176
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1177
    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1176
    invoke-virtual {v0, v1}, Lcom/olivephone/mywidget/SelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->al_textnews:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1180
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->checked_rss:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    .line 1181
    invoke-virtual {p0}, Lcom/olivephone/cu/TextNewsActivity;->updateNewList()V

    .line 1184
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$19;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/TextNewsActivity$19;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1207
    iput v2, p0, Lcom/olivephone/cu/TextNewsActivity;->i:I

    :goto_4e
    iget v0, p0, Lcom/olivephone/cu/TextNewsActivity;->i:I

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 1208
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    iget v1, p0, Lcom/olivephone/cu/TextNewsActivity;->i:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$20;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/TextNewsActivity$20;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1207
    iget v0, p0, Lcom/olivephone/cu/TextNewsActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/olivephone/cu/TextNewsActivity;->i:I

    goto :goto_4e
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 734
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 735
    if-nez p2, :cond_29

    .line 736
    if-eqz p3, :cond_29

    .line 739
    invoke-virtual {p0}, Lcom/olivephone/cu/TextNewsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 741
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    .line 742
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 743
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->et_phone:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    .end local v6           #c:Landroid/database/Cursor;
    :cond_29
    :goto_29
    return-void

    .line 745
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2a
    if-nez v6, :cond_29

    .line 746
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->et_phone:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->requestWindowFeature(I)Z

    .line 254
    const v8, 0x7f03001b

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->setContentView(I)V

    .line 255
    invoke-virtual {p0}, Lcom/olivephone/cu/TextNewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 256
    .local v4, manager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 257
    .local v7, width:I
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 258
    .local v3, height1:I
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    const v8, 0x7f07000c

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 261
    const v8, 0x7f07000d

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 262
    const v8, 0x7f07000e

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 263
    const v8, 0x7f07000f

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_config:Landroid/widget/ImageView;

    .line 264
    const v8, 0x7f070010

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_more:Landroid/widget/ImageView;

    .line 265
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$2;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$2;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$3;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$3;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$4;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$4;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$5;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$5;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$6;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$6;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    const v8, 0x7f07003e

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsoluteLayout;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->al_textnews:Landroid/widget/AbsoluteLayout;

    .line 322
    const v8, 0x7f070040

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    .line 324
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    .line 325
    const v8, 0x7f07002d

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewFlipper;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 327
    const v8, 0x7f07003f

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    .line 328
    const v8, 0x7f07000b

    invoke-virtual {p0, v8}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 331
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 332
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/TextNewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 333
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "width="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v9, 0x78

    sub-int v2, v8, v9

    .line 335
    .local v2, height:I
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v9, 0x50

    sub-int v5, v8, v9

    .line 336
    .local v5, menu_height:I
    const-string v8, "menu_height"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/olivephone/cu/TextNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 337
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 339
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "menu_height"

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    const-string v8, "height"

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v8, "fl_text_news.height"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/TextNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 348
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 349
    const/16 v12, 0x2a

    invoke-direct {v9, v10, v2, v11, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 347
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    const-string v8, "fl_text_news.height"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/TextNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 357
    const/4 v10, -0x1

    add-int/lit8 v11, v2, 0x4

    const/4 v12, 0x0

    .line 358
    const/16 v13, 0x2a

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 356
    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 361
    const/4 v10, -0x1

    const/16 v11, 0x3c

    const/4 v12, 0x0

    .line 362
    invoke-direct {v9, v10, v11, v12, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 360
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->updateChannel()V

    .line 369
    new-instance v8, Landroid/view/GestureDetector;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$7;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$7;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-direct {v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 430
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$8;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$8;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 519
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    new-instance v9, Lcom/olivephone/cu/TextNewsActivity$9;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/TextNewsActivity$9;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 552
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1529
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1530
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1531
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1539
    :goto_f
    return v0

    .line 1533
    :cond_10
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->hiddenNewsContent()V

    .line 1534
    invoke-direct {p0}, Lcom/olivephone/cu/TextNewsActivity;->showNewList()V

    .line 1535
    const/4 v0, 0x1

    goto :goto_f

    .line 1539
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public updateNewList()V
    .registers 3

    .prologue
    .line 1380
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    .line 1381
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u65b0\u95fb\u5217\u8868\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1384
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1385
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$21;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$21;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 1413
    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity$21;->start()V

    .line 1415
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$22;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$22;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/TextNewsActivity;->handlertextnews:Landroid/os/Handler;

    .line 1448
    return-void
.end method
