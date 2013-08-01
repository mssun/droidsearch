.class public Lcom/olivephone/cu/EnshrineActivity;
.super Landroid/app/Activity;
.source "EnshrineActivity.java"


# instance fields
.field cur:Landroid/database/Cursor;

.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field et_searchnews:Landroid/widget/EditText;

.field inflater:Landroid/view/LayoutInflater;

.field inflater1:Landroid/view/LayoutInflater;

.field inflater2:Landroid/view/LayoutInflater;

.field iv_bolan:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_zhongxin:Landroid/widget/ImageView;

.field ll_menu:Landroid/widget/LinearLayout;

.field lv_news_enshrine:Landroid/widget/ListView;

.field pop:Landroid/widget/PopupWindow;

.field pop2:Landroid/widget/PopupWindow;

.field tv_clear:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/olivephone/cu/EnshrineActivity;->popMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/olivephone/cu/EnshrineActivity;->showEnshrine()V

    return-void
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 291
    .line 292
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/EnshrineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 291
    iput-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 293
    iget-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 294
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 295
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 294
    iput-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->pop:Landroid/widget/PopupWindow;

    .line 298
    iget-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 299
    iget-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 301
    iget-object v5, p0, Lcom/olivephone/cu/EnshrineActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 302
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 304
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 303
    check-cast v2, Landroid/widget/ImageView;

    .line 305
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 306
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 307
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$9;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$9;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$10;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$10;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$11;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$11;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$12;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$12;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    return-void
.end method

.method private showEnshrine()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 220
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v1}, Lcom/olivephone/sqlite/DBHelper;->select()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    .line 222
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "zsxh_text"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "zsxh_time"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_36

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 223
    .local v0, sca:Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v1}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 225
    return-void

    .line 222
    nop

    :array_36
    .array-data 0x4
        0x12t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->requestWindowFeature(I)Z

    .line 62
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->setContentView(I)V

    .line 63
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/olivephone/cu/EnshrineActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x96

    sub-int v1, v4, v5

    .line 66
    .local v1, height:I
    add-int/lit8 v2, v1, 0x29

    .line 68
    .local v2, menu_height:I
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 69
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 70
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 71
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_config:Landroid/widget/ImageView;

    .line 72
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_more:Landroid/widget/ImageView;

    .line 73
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 76
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->ll_menu:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 77
    const/16 v6, 0x61

    .line 78
    invoke-direct {v5, v7, v6, v8, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 76
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$1;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$1;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$2;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$2;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$3;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$3;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$4;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$4;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$5;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$5;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    const v4, 0x7f070014

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    .line 133
    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/olivephone/cu/EnshrineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->tv_clear:Landroid/widget/TextView;

    .line 135
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v6, 0x29

    invoke-direct {v5, v7, v1, v8, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x32

    sub-int v3, v4, v5

    .line 140
    .local v3, y:I
    new-instance v4, Lcom/olivephone/sqlite/DBHelper;

    const-string v5, "zsxhdb"

    const/4 v6, 0x0

    sget v7, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 142
    invoke-direct {p0}, Lcom/olivephone/cu/EnshrineActivity;->showEnshrine()V

    .line 144
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$6;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$6;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$7;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$7;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity;->tv_clear:Landroid/widget/TextView;

    new-instance v5, Lcom/olivephone/cu/EnshrineActivity$8;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/EnshrineActivity$8;-><init>(Lcom/olivephone/cu/EnshrineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    return-void
.end method
