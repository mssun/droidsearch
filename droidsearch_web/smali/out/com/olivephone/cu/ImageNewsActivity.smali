.class public Lcom/olivephone/cu/ImageNewsActivity;
.super Landroid/app/Activity;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/olivephone/cu/ImageNewsActivity$LoadThread;
    }
.end annotation


# instance fields
.field _handler:Landroid/os/Handler;

.field adapter:Lcom/olivephone/viewswitch/ImageAdapter;

.field al_imagenews:Landroid/widget/AbsoluteLayout;

.field cateID:Ljava/lang/String;

.field checked_rss:[Ljava/lang/String;

.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field detector:Landroid/view/GestureDetector;

.field dl_url:Ljava/lang/String;

.field drawable:[Landroid/graphics/drawable/Drawable;

.field et_phone:Landroid/widget/EditText;

.field et_searchnews:Landroid/widget/EditText;

.field flipper_image_news:Landroid/widget/ViewFlipper;

.field g:Landroid/widget/Gallery;

.field handler_image_news:Landroid/os/Handler;

.field handler_loadImage:Landroid/os/Handler;

.field handlercate:Landroid/os/Handler;

.field height:I

.field i:I

.field image_detail_position:I

.field imageid:I

.field inflater1:Landroid/view/LayoutInflater;

.field inflater2:Landroid/view/LayoutInflater;

.field isClickable:Z

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

.field list_drawable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field list_image_news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field list_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field ll_menu:Landroid/widget/LinearLayout;

.field loadImageThread:Ljava/lang/Thread;

.field message:Ljava/lang/String;

.field page:I

.field pd:Landroid/app/ProgressDialog;

.field pd_cate:Landroid/app/ProgressDialog;

.field pd_load_imageDetial:Landroid/app/ProgressDialog;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field rss_content:[Ljava/lang/String;

.field selectView:Lcom/olivephone/mywidget/SelectView;

.field texts:[Ljava/lang/String;

.field tv_image_tips:Landroid/widget/TextView;

.field tv_news_tips:Landroid/widget/TextView;

.field urls:[Ljava/lang/String;

.field uuid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->isext:Z

    .line 107
    iput-boolean v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->isClickable:Z

    .line 113
    iput v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    .line 775
    new-instance v0, Lcom/olivephone/cu/ImageNewsActivity$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/ImageNewsActivity$1;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->_handler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method private LoadIcon()V
    .registers 3

    .prologue
    .line 830
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->pd:Landroid/app/ProgressDialog;

    .line 831
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->pd:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->pd:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u56fe\u7247\u5217\u8868\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 835
    new-instance v0, Lcom/olivephone/cu/ImageNewsActivity$13;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/ImageNewsActivity$13;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    .line 858
    invoke-virtual {v0}, Lcom/olivephone/cu/ImageNewsActivity$13;->start()V

    .line 860
    new-instance v0, Lcom/olivephone/cu/ImageNewsActivity$14;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/ImageNewsActivity$14;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    iput-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->handler_image_news:Landroid/os/Handler;

    .line 900
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/olivephone/cu/ImageNewsActivity;->popMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/ImageNewsActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/olivephone/cu/ImageNewsActivity;->loadImageDetial(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/olivephone/cu/ImageNewsActivity;->LoadIcon()V

    return-void
.end method

.method private loadChannelData()V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-string v10, "image"

    const-string v9, "-"

    const-string v6, "imagerss_list_size"

    const-string v7, ""

    .line 978
    const-string v4, "loadChannelData"

    const-string v5, "loadChannelData()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v4, "USERINFO"

    invoke-virtual {p0, v4, v8}, Lcom/olivephone/cu/ImageNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 981
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "imagerss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    const-string v4, "imagerss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "imagerss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 982
    :cond_40
    const-string v4, "inAlert"

    const-string v5, "inAlert"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 986
    const-string v5, "\u65b0\u534e\u9891\u5a92\u63d0\u793a\u60a8"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 987
    const-string v5, "\u60a8\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u65b0\u95fb\u9891\u9053\u5462!"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 988
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/olivephone/cu/ImageNewsActivity$19;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/ImageNewsActivity$19;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 998
    .local v0, ab1:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1000
    const-string v4, "inAlertEnd"

    const-string v5, "inAlertEND"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v0           #ab1:Landroid/app/AlertDialog$Builder;
    :cond_6d
    return-void

    .line 1003
    :cond_6e
    const-string v4, "imagerss_list_size"

    const-string v4, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1004
    .local v2, rss_list_size:I
    const-string v4, "rss_list_size"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->checked_rss:[Ljava/lang/String;

    .line 1006
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    .line 1007
    const/4 v1, 0x0

    .local v1, i:I
    :goto_95
    if-ge v1, v2, :cond_6d

    .line 1008
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->checked_rss:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image"

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

    .line 1009
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image"

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

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_95
.end method

.method private loadImageDetial(I)V
    .registers 16
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 423
    sput-boolean v9, Lcom/olivephone/constant/MyThread;->isAlive:Z

    .line 424
    move v5, p1

    .line 426
    .local v5, myid:I
    const-string v9, "id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v9}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 431
    :try_start_1b
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/olivephone/model/ImageNews;

    .line 433
    .local v2, imageNews:Lcom/olivephone/model/ImageNews;
    invoke-virtual {v2}, Lcom/olivephone/model/ImageNews;->getBigTitle()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, title:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf

    if-le v9, v10, :cond_49

    .line 436
    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 438
    :cond_49
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->tv_image_tips:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v2}, Lcom/olivephone/model/ImageNews;->getImageList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    .line 447
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_71

    .line 510
    new-instance v9, Lcom/olivephone/cu/ImageNewsActivity$11;

    invoke-direct {v9, p0, v5}, Lcom/olivephone/cu/ImageNewsActivity$11;-><init>(Lcom/olivephone/cu/ImageNewsActivity;I)V

    iput-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->loadImageThread:Ljava/lang/Thread;

    .line 545
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->loadImageThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 547
    new-instance v9, Lcom/olivephone/cu/ImageNewsActivity$12;

    invoke-direct {v9, p0, v2}, Lcom/olivephone/cu/ImageNewsActivity$12;-><init>(Lcom/olivephone/cu/ImageNewsActivity;Lcom/olivephone/model/ImageNews;)V

    iput-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->handler_loadImage:Landroid/os/Handler;

    .line 747
    .end local v1           #i:I
    .end local v2           #imageNews:Lcom/olivephone/model/ImageNews;
    .end local v7           #title:Ljava/lang/String;
    :goto_70
    return-void

    .line 448
    .restart local v1       #i:I
    .restart local v2       #imageNews:Lcom/olivephone/model/ImageNews;
    .restart local v7       #title:Ljava/lang/String;
    :cond_71
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 449
    .local v4, ll:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 450
    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 451
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 453
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 454
    .local v3, iv:Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/16 v11, 0xc8

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    const/16 v9, 0x3f3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 462
    const v9, 0x7f02002e

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    new-instance v9, Lcom/olivephone/cu/ImageNewsActivity$9;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/ImageNewsActivity$9;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 485
    .local v6, sv:Landroid/widget/ScrollView;
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, p0, Lcom/olivephone/cu/ImageNewsActivity;->height:I

    const/16 v12, 0xdc

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    const/16 v13, 0x15e

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 487
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 488
    .local v8, tv:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/16 v11, 0x32

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/olivephone/model/Image;

    invoke-virtual {v9}, Lcom/olivephone/model/Image;->getPicDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    const/high16 v9, 0x4190

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 493
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 495
    new-instance v9, Lcom/olivephone/cu/ImageNewsActivity$10;

    invoke-direct {v9, p0}, Lcom/olivephone/cu/ImageNewsActivity$10;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    const-string v9, "flipper_image_news.getChildCount()"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v11}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v9, p0, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v9, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_126} :catch_12a

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    .line 743
    .end local v1           #i:I
    .end local v2           #imageNews:Lcom/olivephone/model/ImageNews;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #ll:Landroid/widget/LinearLayout;
    .end local v6           #sv:Landroid/widget/ScrollView;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #tv:Landroid/widget/TextView;
    :catch_12a
    move-exception v9

    move-object v0, v9

    .line 744
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_70
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 903
    .line 904
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/ImageNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 903
    iput-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 905
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 906
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 907
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 906
    iput-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    .line 910
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 911
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 913
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 914
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 915
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 916
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 917
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 918
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$15;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$15;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 928
    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$16;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$16;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 939
    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$17;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$17;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 949
    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$18;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$18;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    return-void
.end method

.method private updateChannel()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 1016
    invoke-direct {p0}, Lcom/olivephone/cu/ImageNewsActivity;->loadChannelData()V

    .line 1037
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 1166
    :cond_e
    return-void

    .line 1042
    :cond_f
    new-instance v0, Lcom/olivephone/mywidget/SelectView;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->rss_content:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/olivephone/mywidget/SelectView;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    .line 1043
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/olivephone/mywidget/SelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->al_imagenews:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 1047
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->checked_rss:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->cateID:Ljava/lang/String;

    .line 1049
    invoke-direct {p0}, Lcom/olivephone/cu/ImageNewsActivity;->LoadIcon()V

    .line 1052
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/olivephone/cu/ImageNewsActivity$20;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/ImageNewsActivity$20;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1070
    iput v2, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    :goto_40
    iget v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->checked_rss:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 1071
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->tv:[Landroid/widget/TextView;

    iget v1, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/olivephone/cu/ImageNewsActivity$21;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/ImageNewsActivity$21;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1070
    iget v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->i:I

    goto :goto_40
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string v5, "menu_height"

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0, v10}, Lcom/olivephone/cu/ImageNewsActivity;->requestWindowFeature(I)Z

    .line 245
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->setContentView(I)V

    .line 246
    const-string v4, "menu_height"

    invoke-virtual {p0, v5, v8}, Lcom/olivephone/cu/ImageNewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 247
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "menu_height"

    const/16 v4, 0x1ea

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 248
    .local v2, menu_height:I
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 249
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 250
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 252
    const/16 v6, 0x3c

    .line 250
    invoke-direct {v5, v9, v6, v8, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 255
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 256
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 257
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_config:Landroid/widget/ImageView;

    .line 258
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_more:Landroid/widget/ImageView;

    .line 259
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$2;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$2;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$3;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$3;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$4;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$4;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$5;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$5;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$6;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$6;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    const v4, 0x7f07001a

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->al_imagenews:Landroid/widget/AbsoluteLayout;

    .line 308
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->g:Landroid/widget/Gallery;

    .line 309
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->tv_image_tips:Landroid/widget/TextView;

    .line 311
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 312
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/ImageNewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 314
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0xc8

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->height:I

    .line 317
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    .line 318
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v6, p0, Lcom/olivephone/cu/ImageNewsActivity;->height:I

    const/16 v7, 0x91

    invoke-direct {v5, v9, v6, v8, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    .line 322
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/ImageNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 321
    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 323
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->inflater1:Landroid/view/LayoutInflater;

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, layout:Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    const/16 v5, 0x1e0

    const/16 v6, 0x2d

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    .line 327
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    invoke-direct {p0}, Lcom/olivephone/cu/ImageNewsActivity;->updateChannel()V

    .line 334
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$7;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$7;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-direct {v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 397
    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity;->g:Landroid/widget/Gallery;

    new-instance v5, Lcom/olivephone/cu/ImageNewsActivity$8;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/ImageNewsActivity$8;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 419
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-super {p0, p1}, Landroid/app/Activity;->setWallpaper(Ljava/io/InputStream;)V

    .line 752
    return-void
.end method
