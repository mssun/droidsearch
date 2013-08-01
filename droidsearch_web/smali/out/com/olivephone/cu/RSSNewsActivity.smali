.class public Lcom/olivephone/cu/RSSNewsActivity;
.super Landroid/app/Activity;
.source "RSSNewsActivity.java"


# instance fields
.field checked_rss:[Ljava/lang/String;

.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field detector:Landroid/view/GestureDetector;

.field et_phone:Landroid/widget/EditText;

.field et_searchnews:Landroid/widget/EditText;

.field handler1:Landroid/os/Handler;

.field handlertextnews:Landroid/os/Handler;

.field i:I

.field ib_search:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field isext:Z

.field iv_download:Landroid/widget/ImageView;

.field iv_regnews:Landroid/widget/ImageView;

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

.field lv_news_enshrine:Landroid/widget/ListView;

.field message:Ljava/lang/String;

.field news_id:I

.field page:I

.field pd_load_news:Landroid/app/ProgressDialog;

.field pd_newlist:Landroid/app/ProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field rss_content:[Ljava/lang/String;

.field rssnews_main:Landroid/widget/AbsoluteLayout;

.field selectView:Lcom/olivephone/mywidget/SelectView;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field vf_newcontent:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->tool()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/RSSNewsActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/olivephone/cu/RSSNewsActivity;->loadNews(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->showNewsContent()V

    return-void
.end method

.method static synthetic access$3(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->hiddenNewsContent()V

    return-void
.end method

.method static synthetic access$4(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->loadNewsList()V

    return-void
.end method

.method private createSelectView()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_c

    .line 582
    :cond_b
    return-void

    .line 526
    :cond_c
    new-instance v0, Lcom/olivephone/mywidget/SelectView;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/olivephone/mywidget/SelectView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    .line 527
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 529
    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 527
    invoke-virtual {v0, v1}, Lcom/olivephone/mywidget/SelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->rssnews_main:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->rss_content:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->url:Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->loadNewsList()V

    .line 535
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/olivephone/cu/RSSNewsActivity$15;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/RSSNewsActivity$15;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 555
    iput v2, p0, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    :goto_3d
    iget v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 556
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    iget v1, p0, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/olivephone/cu/RSSNewsActivity$16;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/RSSNewsActivity$16;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 555
    iget v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    goto :goto_3d
.end method

.method private hiddenNewsContent()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 360
    return-void
.end method

.method private loadChannelData()V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-string v10, "rss"

    const-string v9, "-"

    const-string v6, "rss_list_size"

    const-string v7, ""

    .line 492
    const-string v4, "USERINFO"

    invoke-virtual {p0, v4, v8}, Lcom/olivephone/cu/RSSNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 494
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "rss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    const-string v4, "rss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "rss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 496
    :cond_39
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    const-string v5, "\u65b0\u534e\u9891\u5a92\u63d0\u793a\u60a8"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 498
    const-string v5, "\u60a8\u8fd8\u6ca1\u6709\u8ba2\u9605\u65b0\u95fb\u5462!"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 499
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/olivephone/cu/RSSNewsActivity$14;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/RSSNewsActivity$14;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 506
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 518
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_58
    return-void

    .line 510
    :cond_59
    const-string v4, "rss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 511
    .local v2, rss_list_size:I
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    .line 512
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity;->rss_content:[Ljava/lang/String;

    .line 513
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6e
    if-ge v1, v2, :cond_58

    .line 514
    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rss"

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

    .line 515
    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity;->rss_content:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rss"

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

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e
.end method

.method private loadNews(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 441
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 442
    move v0, p1

    .local v0, i:I
    :goto_6
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_12

    .line 465
    const/4 v0, 0x0

    :goto_f
    if-lt v0, p1, :cond_4b

    .line 488
    return-void

    .line 443
    :cond_12
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/RssItem;

    .line 444
    .local v1, item:Lcom/olivephone/model/RssItem;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 445
    .local v2, wv:Landroid/webkit/WebView;
    new-instance v3, Lcom/olivephone/cu/RSSNewsActivity$10;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/RSSNewsActivity$10;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    new-instance v3, Lcom/olivephone/cu/RSSNewsActivity$11;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/RSSNewsActivity$11;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 459
    invoke-direct {p0, v2}, Lcom/olivephone/cu/RSSNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V

    .line 460
    invoke-virtual {v1}, Lcom/olivephone/model/RssItem;->getLink()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->message:Ljava/lang/String;

    .line 461
    invoke-virtual {v1}, Lcom/olivephone/model/RssItem;->getBigTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->title:Ljava/lang/String;

    .line 462
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 466
    .end local v1           #item:Lcom/olivephone/model/RssItem;
    .end local v2           #wv:Landroid/webkit/WebView;
    :cond_4b
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/RssItem;

    .line 467
    .restart local v1       #item:Lcom/olivephone/model/RssItem;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 468
    .restart local v2       #wv:Landroid/webkit/WebView;
    new-instance v3, Lcom/olivephone/cu/RSSNewsActivity$12;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/RSSNewsActivity$12;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    new-instance v3, Lcom/olivephone/cu/RSSNewsActivity$13;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/RSSNewsActivity$13;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 482
    invoke-direct {p0, v2}, Lcom/olivephone/cu/RSSNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V

    .line 483
    invoke-virtual {v1}, Lcom/olivephone/model/RssItem;->getLink()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->message:Ljava/lang/String;

    .line 484
    invoke-virtual {v1}, Lcom/olivephone/model/RssItem;->getBigTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->title:Ljava/lang/String;

    .line 485
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private loadNewsList()V
    .registers 3

    .prologue
    .line 369
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    .line 370
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u65b0\u95fb\u5217\u8868\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 373
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->pd_newlist:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 374
    new-instance v0, Lcom/olivephone/cu/RSSNewsActivity$8;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/RSSNewsActivity$8;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 392
    invoke-virtual {v0}, Lcom/olivephone/cu/RSSNewsActivity$8;->start()V

    .line 394
    new-instance v0, Lcom/olivephone/cu/RSSNewsActivity$9;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/RSSNewsActivity$9;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->handlertextnews:Landroid/os/Handler;

    .line 425
    return-void
.end method

.method private setWebViewProperty(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "wv_newcontent"

    .prologue
    const/4 v1, 0x1

    .line 429
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V

    .line 430
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 431
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 432
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 433
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 434
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 435
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 436
    return-void
.end method

.method private showNewsContent()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 365
    return-void
.end method

.method private tool()V
    .registers 4

    .prologue
    .line 273
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

    .line 275
    .local v0, cs:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 277
    new-instance v2, Lcom/olivephone/cu/RSSNewsActivity$7;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/RSSNewsActivity$7;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 355
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, v8}, Lcom/olivephone/cu/RSSNewsActivity;->requestWindowFeature(I)Z

    .line 99
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->setContentView(I)V

    .line 101
    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->rssnews_main:Landroid/widget/AbsoluteLayout;

    .line 102
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    .line 103
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 104
    const v3, 0x7f07002a

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->iv_download:Landroid/widget/ImageView;

    .line 105
    const v3, 0x7f07002b

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->iv_regnews:Landroid/widget/ImageView;

    .line 106
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->ib_search:Landroid/widget/ImageView;

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/RSSNewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x41

    sub-int v1, v3, v4

    .line 112
    .local v1, height:I
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v5, 0x2a

    invoke-direct {v4, v6, v1, v7, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v5, 0x2b

    invoke-direct {v4, v6, v1, v7, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/RSSNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 117
    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 119
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, layout:Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    const/16 v4, 0x1e0

    const/16 v5, 0x2d

    invoke-direct {v3, v2, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    .line 123
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 124
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->ib_search:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$1;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$1;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->et_searchnews:Landroid/widget/EditText;

    .line 139
    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$2;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$2;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 139
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->iv_regnews:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$3;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$3;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->iv_download:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$4;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$4;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$5;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$5;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-direct {v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 231
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    new-instance v4, Lcom/olivephone/cu/RSSNewsActivity$6;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/RSSNewsActivity$6;-><init>(Lcom/olivephone/cu/RSSNewsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->loadChannelData()V

    .line 268
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->createSelectView()V

    .line 270
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 585
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    .line 586
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 587
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 594
    :goto_f
    return v0

    .line 589
    :cond_10
    invoke-direct {p0}, Lcom/olivephone/cu/RSSNewsActivity;->hiddenNewsContent()V

    .line 590
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 591
    const/4 v0, 0x1

    goto :goto_f

    .line 594
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method
