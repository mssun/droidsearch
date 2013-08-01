.class public Lcom/olivephone/cu/DownLoadActivity;
.super Landroid/app/Activity;
.source "DownLoadActivity.java"


# instance fields
.field al_download:Landroid/widget/AbsoluteLayout;

.field downloadbar:Landroid/widget/ProgressBar;

.field et_searchnews:Landroid/widget/EditText;

.field file_name:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field handler1:Landroid/os/Handler;

.field i:I

.field inflater:Landroid/view/LayoutInflater;

.field inflater1:Landroid/view/LayoutInflater;

.field inflater2:Landroid/view/LayoutInflater;

.field iv_bolan:Landroid/widget/ImageView;

.field iv_bottomline:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_delete_q:Landroid/widget/ImageView;

.field iv_downloader:Landroid/widget/ImageView;

.field iv_downloader_ext:Z

.field iv_downmanager:Landroid/widget/ImageView;

.field iv_downmanager_ext:Z

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_pause_q:Landroid/widget/ImageView;

.field iv_zhongxin:Landroid/widget/ImageView;

.field ll_downmanager:Landroid/widget/LinearLayout;

.field ll_menu:Landroid/widget/LinearLayout;

.field lv_file:Landroid/widget/ListView;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field progress_handler:Landroid/os/Handler;

.field size:I

.field sv_downloader:Landroid/widget/ScrollView;

.field sv_downmanager:Landroid/widget/ScrollView;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field tv_bif:Landroid/widget/TextView;

.field tv_downloader:Landroid/widget/TextView;

.field tv_downmanager:Landroid/widget/TextView;

.field tv_fileName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader_ext:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager_ext:Z

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/olivephone/cu/DownLoadActivity;->popMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/olivephone/cu/DownLoadActivity;->hiddenDownLoader()V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/olivephone/cu/DownLoadActivity;->showDownLoader()V

    return-void
.end method

.method private hiddenDownLoader()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 536
    return-void
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 542
    .line 543
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/DownLoadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 542
    iput-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 544
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 545
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 546
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 545
    iput-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    .line 549
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 550
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 552
    iget-object v5, p0, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 553
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 555
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 554
    check-cast v2, Landroid/widget/ImageView;

    .line 556
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 557
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 558
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/DownLoadActivity$14;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/DownLoadActivity$14;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 569
    new-instance v5, Lcom/olivephone/cu/DownLoadActivity$15;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/DownLoadActivity$15;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 581
    new-instance v5, Lcom/olivephone/cu/DownLoadActivity$16;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/DownLoadActivity$16;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 591
    new-instance v5, Lcom/olivephone/cu/DownLoadActivity$17;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/DownLoadActivity$17;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    return-void
.end method

.method private showDownLoader()V
    .registers 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 540
    return-void
.end method


# virtual methods
.method public loadDownloader()V
    .registers 16

    .prologue
    .line 402
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v10, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 404
    new-instance v9, Landroid/widget/ScrollView;

    invoke-direct {v9, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    .line 405
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v11, -0x1

    const/16 v12, 0x96

    const/4 v13, 0x0

    const/16 v14, 0x50

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 408
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 409
    .local v6, ll_downloader:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 412
    const/4 v9, 0x0

    iput v9, p0, Lcom/olivephone/cu/DownLoadActivity;->i:I

    :goto_3c
    iget v9, p0, Lcom/olivephone/cu/DownLoadActivity;->i:I

    sget-object v10, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v9, v10, :cond_53

    .line 529
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    invoke-virtual {v9, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 531
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v10, p0, Lcom/olivephone/cu/DownLoadActivity;->sv_downloader:Landroid/widget/ScrollView;

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 532
    return-void

    .line 414
    :cond_53
    sget-object v9, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_9a

    .line 415
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    const v10, 0x7f020037

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader_ext:Z

    .line 417
    invoke-direct {p0}, Lcom/olivephone/cu/DownLoadActivity;->showDownLoader()V

    .line 418
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v11, 0x140

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/16 v14, 0xfa

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0xa

    const/16 v14, 0xfd

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v9, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v11, -0x1

    const/16 v12, 0xc8

    const/4 v13, 0x0

    const/16 v14, 0x118

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_9a
    sget-object v9, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    iget v10, p0, Lcom/olivephone/cu/DownLoadActivity;->i:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/DownLoadFile;

    .line 424
    .local v0, dlf:Lcom/olivephone/model/DownLoadFile;
    invoke-virtual {v0, p0}, Lcom/olivephone/model/DownLoadFile;->setDla(Lcom/olivephone/cu/DownLoadActivity;)V

    .line 425
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getSize()I

    move-result v9

    iput v9, p0, Lcom/olivephone/cu/DownLoadActivity;->size:I

    .line 426
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    .local v8, tv_fileName:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u6587\u4ef6\u540d:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 431
    .local v5, ll_bar:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 434
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    const v10, 0x1010078

    invoke-direct {v1, p0, v9, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 435
    .local v1, downloadbar:Landroid/widget/ProgressBar;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x104

    const/16 v11, 0x14

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getSize()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 438
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 439
    .local v4, iv_pause:Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->isPause()Z

    move-result v9

    if-eqz v9, :cond_1d0

    .line 441
    const v9, 0x7f020013

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_11c
    iput-object v4, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_pause_q:Landroid/widget/ImageView;

    .line 447
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 448
    .local v3, iv_delete:Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const v9, 0x7f02000e

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iput-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_delete_q:Landroid/widget/ImageView;

    .line 452
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 457
    .local v7, tv_bif:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 461
    .local v2, iv_bottomline:Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    const v9, 0x7f020035

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 465
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u4e0b\u8f7d\u8fdb\u5ea6:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/olivephone/model/DownLoadFile;->getSize()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    div-float/2addr v10, v11

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    new-instance v9, Lcom/olivephone/cu/DownLoadActivity$12;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/DownLoadActivity$12;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    new-instance v9, Lcom/olivephone/cu/DownLoadActivity$13;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/DownLoadActivity$13;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    iget v9, p0, Lcom/olivephone/cu/DownLoadActivity;->i:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/olivephone/cu/DownLoadActivity;->i:I

    goto/16 :goto_3c

    .line 443
    .end local v2           #iv_bottomline:Landroid/widget/ImageView;
    .end local v3           #iv_delete:Landroid/widget/ImageView;
    .end local v7           #tv_bif:Landroid/widget/TextView;
    :cond_1d0
    const v9, 0x7f02002d

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11c
.end method

.method public loadFile()Landroid/widget/ArrayAdapter;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v10, "fileexists"

    .line 364
    const-string v7, "loadFileFromSDCard"

    const-string v8, "loadFileFromSDCard().start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 371
    const-string v7, "fileexists"

    const-string v7, "fileexists"

    invoke-static {v10, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 373
    .local v2, fileItems:[Ljava/io/File;
    const-string v7, "fileItems.size"

    new-instance v8, Ljava/lang/StringBuilder;

    array-length v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3c
    array-length v7, v2

    if-lt v3, v7, :cond_7e

    .line 385
    .end local v2           #fileItems:[Ljava/io/File;
    .end local v3           #i:I
    :cond_3f
    const-string v7, "list.zise"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 387
    .local v6, strs:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_99

    .line 391
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x109000c

    invoke-direct {v0, p0, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 393
    .local v0, aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const-string v7, "strs.zise"

    new-instance v8, Ljava/lang/StringBuilder;

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-object v0

    .line 375
    .end local v0           #aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #strs:[Ljava/lang/String;
    .restart local v2       #fileItems:[Ljava/io/File;
    :cond_7e
    aget-object v4, v2, v3

    .line 376
    .local v4, item:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_96

    .line 378
    const-string v7, "fileexists"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 388
    .end local v2           #fileItems:[Ljava/io/File;
    .end local v4           #item:Ljava/io/File;
    .restart local v6       #strs:[Ljava/lang/String;
    :cond_99
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c
.end method

.method public loadFileFromSDCard()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 263
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    .line 264
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/16 v6, 0x6e

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    const/high16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 270
    invoke-virtual {p0}, Lcom/olivephone/cu/DownLoadActivity;->loadFile()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 271
    .local v0, aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v2, Lcom/olivephone/cu/DownLoadActivity$10;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/DownLoadActivity$10;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v2, Lcom/olivephone/cu/DownLoadActivity$11;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/DownLoadActivity$11;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 361
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0xa

    const/high16 v10, 0x41a0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->requestWindowFeature(I)Z

    .line 101
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->setContentView(I)V

    .line 103
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 104
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 105
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 106
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_config:Landroid/widget/ImageView;

    .line 107
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_more:Landroid/widget/ImageView;

    .line 108
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 109
    const-string v2, "menu_height"

    invoke-virtual {p0, v2, v8}, Lcom/olivephone/cu/DownLoadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "menu_height"

    const/16 v3, 0x1ea

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, menu_height:I
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->ll_menu:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 112
    const/16 v4, 0x3c

    .line 113
    invoke-direct {v3, v9, v4, v8, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$1;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$2;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$2;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$3;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$3;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$4;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$4;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$5;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$5;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    .line 169
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    .line 170
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    const v3, 0x7f020037

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v4, 0x140

    const/16 v5, 0x21

    const/16 v6, 0x2a

    invoke-direct {v3, v4, v5, v8, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v4, 0x2d

    invoke-direct {v3, v7, v7, v11, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    .line 179
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    const v3, 0x7f020037

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v4, 0x140

    const/16 v5, 0x21

    const/16 v6, 0x4b

    invoke-direct {v3, v4, v5, v8, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    .line 182
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    const-string v3, "\u5df2\u7ecf\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v4, 0x4e

    invoke-direct {v3, v7, v7, v11, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downloader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v2, Lcom/olivephone/cu/DownLoadActivity$6;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/DownLoadActivity$6;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    iput-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->handler1:Landroid/os/Handler;

    .line 203
    new-instance v2, Lcom/olivephone/cu/DownLoadActivity$7;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/DownLoadActivity$7;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    .line 215
    invoke-virtual {v2}, Lcom/olivephone/cu/DownLoadActivity$7;->start()V

    .line 217
    invoke-virtual {p0}, Lcom/olivephone/cu/DownLoadActivity;->loadFileFromSDCard()V

    .line 218
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->al_download:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$8;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$8;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    new-instance v3, Lcom/olivephone/cu/DownLoadActivity$9;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/DownLoadActivity$9;-><init>(Lcom/olivephone/cu/DownLoadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    return-void
.end method
