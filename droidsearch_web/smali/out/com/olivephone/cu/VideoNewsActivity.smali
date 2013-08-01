.class public Lcom/olivephone/cu/VideoNewsActivity;
.super Landroid/app/Activity;
.source "VideoNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/olivephone/cu/VideoNewsActivity$LoadThread;
    }
.end annotation


# instance fields
.field _handler:Landroid/os/Handler;

.field adapter:Lcom/olivephone/util/ImageAndTextListAdapter;

.field adv:Lcom/olivephone/model/VideoAdv;

.field al_detail:Landroid/widget/LinearLayout;

.field al_videonews:Landroid/widget/AbsoluteLayout;

.field al_videonews_list:Landroid/widget/AbsoluteLayout;

.field bigtitle:Ljava/lang/String;

.field bt_back_newlist:Landroid/widget/Button;

.field bt_shoucang:Landroid/widget/Button;

.field btn:Landroid/widget/Button;

.field cate:Lcom/olivephone/model/CateList;

.field cateID:Ljava/lang/String;

.field checked_rss:[Ljava/lang/String;

.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field et_phone:Landroid/widget/EditText;

.field et_searchnews:Landroid/widget/EditText;

.field fl_text_news:Landroid/widget/FrameLayout;

.field handleradv:Landroid/os/Handler;

.field handlercate:Landroid/os/Handler;

.field handlernews:Landroid/os/Handler;

.field i:I

.field imageTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/util/ImageAndText;",
            ">;"
        }
    .end annotation
.end field

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

.field iv:Landroid/widget/ImageView;

.field iv_bolan:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_detailimg:Landroid/widget/ImageView;

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_playvideo:Landroid/widget/ImageView;

.field iv_zhongxin:Landroid/widget/ImageView;

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

.field ll_menu:Landroid/widget/LinearLayout;

.field public lv:Landroid/widget/ListView;

.field page:I

.field pd_Adv:Landroid/app/ProgressDialog;

.field pd_channel:Landroid/app/ProgressDialog;

.field pd_news:Landroid/app/ProgressDialog;

.field pd_video:Landroid/app/ProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field rss_content:[Ljava/lang/String;

.field selectView:Lcom/olivephone/mywidget/SelectView;

.field title:Ljava/lang/String;

.field tv_detailnews:Landroid/widget/TextView;

.field tv_loadtext:Landroid/widget/TextView;

.field tv_newsdesc:Landroid/widget/TextView;

.field tv_playtime:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;

.field video_adv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field video_channel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field video_news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field videourl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->isClickable:Z

    .line 122
    iput-boolean v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->isRefresh:Z

    .line 123
    iput-boolean v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->isFirstRun:Z

    .line 124
    iput v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    .line 558
    new-instance v0, Lcom/olivephone/cu/VideoNewsActivity$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/VideoNewsActivity$1;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->_handler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->popMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->hiddenNewList()V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->showNewsVideo()V

    return-void
.end method

.method static synthetic access$3(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->showNewList()V

    return-void
.end method

.method static synthetic access$4(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->hiddenVideo()V

    return-void
.end method

.method static synthetic access$5(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->updateNewsList()V

    return-void
.end method

.method private hiddenNewList()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews_list:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 526
    return-void
.end method

.method private hiddenVideo()V
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_detail:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    return-void
.end method

.method private loadChannelData()V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-string v10, "video"

    const-string v9, "-"

    const-string v6, "videorss_list_size"

    const-string v7, ""

    .line 722
    const-string v4, "loadChannelData"

    const-string v5, "loadChannelData()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v4, "USERINFO"

    invoke-virtual {p0, v4, v8}, Lcom/olivephone/cu/VideoNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 725
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "videorss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    const-string v4, "videorss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "videorss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 727
    :cond_40
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    const-string v5, "\u65b0\u534e\u9891\u5a92\u63d0\u793a\u60a8"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 729
    const-string v5, "\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u65b0\u95fb\u9891\u9053\u5462!"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 730
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/olivephone/cu/VideoNewsActivity$14;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/VideoNewsActivity$14;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 740
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 753
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_5f
    return-void

    .line 744
    :cond_60
    const-string v4, "videorss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 745
    .local v2, rss_list_size:I
    const-string v4, "rss_list_size"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->checked_rss:[Ljava/lang/String;

    .line 747
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    .line 748
    const/4 v1, 0x0

    .local v1, i:I
    :goto_87
    if-ge v1, v2, :cond_5f

    .line 749
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->checked_rss:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "video"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    aput-object v5, v4, v1

    .line 750
    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "video"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_87
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 947
    .line 948
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/VideoNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 947
    iput-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 949
    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 950
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 951
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 950
    iput-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    .line 954
    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 955
    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 957
    iget-object v5, p0, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 958
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 959
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 960
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 961
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 962
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/VideoNewsActivity$17;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/VideoNewsActivity$17;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 972
    new-instance v5, Lcom/olivephone/cu/VideoNewsActivity$18;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/VideoNewsActivity$18;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 983
    new-instance v5, Lcom/olivephone/cu/VideoNewsActivity$19;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/VideoNewsActivity$19;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    new-instance v5, Lcom/olivephone/cu/VideoNewsActivity$20;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/VideoNewsActivity$20;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1020
    return-void
.end method

.method private showNewList()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews_list:Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 520
    return-void
.end method

.method private showNewsVideo()V
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_detail:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    return-void
.end method

.method private updateChannel()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 758
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->loadChannelData()V

    .line 760
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 924
    :cond_e
    return-void

    .line 764
    :cond_f
    new-instance v0, Lcom/olivephone/mywidget/SelectView;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/olivephone/mywidget/SelectView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    .line 765
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/olivephone/mywidget/SelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->checked_rss:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    .line 771
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->updateNewsList()V

    .line 774
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/olivephone/cu/VideoNewsActivity$15;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/VideoNewsActivity$15;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    iput v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    :goto_40
    iget v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity;->checked_rss:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 794
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    iget v1, p0, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/olivephone/cu/VideoNewsActivity$16;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/VideoNewsActivity$16;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    iget v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    goto :goto_40
.end method

.method private updateNewsList()V
    .registers 3

    .prologue
    .line 582
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    .line 583
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u65b0\u95fb\u5217\u8868\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 586
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->pd_news:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 587
    new-instance v0, Lcom/olivephone/cu/VideoNewsActivity$12;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/VideoNewsActivity$12;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 606
    invoke-virtual {v0}, Lcom/olivephone/cu/VideoNewsActivity$12;->start()V

    .line 608
    new-instance v0, Lcom/olivephone/cu/VideoNewsActivity$13;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/VideoNewsActivity$13;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->handlernews:Landroid/os/Handler;

    .line 650
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const-string v7, ""

    .line 929
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 930
    if-nez p1, :cond_33

    .line 931
    const-string v0, ""

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    if-eqz p3, :cond_33

    .line 934
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoNewsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 935
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 936
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 937
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->et_phone:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 944
    .end local v6           #c:Landroid/database/Cursor;
    :cond_33
    :goto_33
    return-void

    .line 939
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_34
    if-nez v6, :cond_33

    .line 940
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->et_phone:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f070050

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v8, "fl_text_news.height"

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->requestWindowFeature(I)Z

    .line 257
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->setContentView(I)V

    .line 259
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 260
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 261
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 262
    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_config:Landroid/widget/ImageView;

    .line 263
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_more:Landroid/widget/ImageView;

    .line 264
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$2;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$2;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$3;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$3;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$4;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$4;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$5;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$5;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$6;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$6;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    .line 316
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->btn:Landroid/widget/Button;

    .line 317
    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews:Landroid/widget/AbsoluteLayout;

    .line 318
    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews_list:Landroid/widget/AbsoluteLayout;

    .line 319
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_detail:Landroid/widget/LinearLayout;

    .line 321
    const v3, 0x7f07004b

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->tv_title:Landroid/widget/TextView;

    .line 322
    const v3, 0x7f07004c

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->tv_playtime:Landroid/widget/TextView;

    .line 323
    invoke-virtual {p0, v5}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->tv_newsdesc:Landroid/widget/TextView;

    .line 324
    const v3, 0x7f07004a

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_detailimg:Landroid/widget/ImageView;

    .line 326
    invoke-virtual {p0, v5}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->tv_detailnews:Landroid/widget/TextView;

    .line 327
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->tv_detailnews:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 328
    const v3, 0x7f07004d

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->bt_shoucang:Landroid/widget/Button;

    .line 329
    const v3, 0x7f07003f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    .line 330
    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_playvideo:Landroid/widget/ImageView;

    .line 331
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 332
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/VideoNewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 334
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x78

    sub-int v1, v3, v4

    .line 335
    .local v1, height:I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x50

    sub-int v2, v3, v4

    .line 336
    .local v2, height2:I
    const-string v3, "height"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v3, "fl_text_news.height"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 340
    const/16 v5, 0x2a

    invoke-direct {v4, v6, v1, v7, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 338
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    const-string v3, "fl_text_news.height"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/VideoNewsActivity;->fl_text_news:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->updateChannel()V

    .line 344
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 345
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 346
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 348
    const/16 v5, 0x3c

    .line 346
    invoke-direct {v4, v6, v5, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$7;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$7;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 396
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$8;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$8;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 431
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->iv_playvideo:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$9;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$9;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->bt_shoucang:Landroid/widget/Button;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$10;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$10;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity;->btn:Landroid/widget/Button;

    new-instance v4, Lcom/olivephone/cu/VideoNewsActivity$11;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/VideoNewsActivity$11;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1022
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1023
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity;->al_videonews_list:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1024
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1031
    :goto_f
    return v0

    .line 1026
    :cond_10
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->showNewList()V

    .line 1027
    invoke-direct {p0}, Lcom/olivephone/cu/VideoNewsActivity;->hiddenVideo()V

    .line 1028
    const/4 v0, 0x1

    goto :goto_f

    .line 1031
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method
