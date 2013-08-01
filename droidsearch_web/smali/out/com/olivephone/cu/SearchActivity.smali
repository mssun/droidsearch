.class public Lcom/olivephone/cu/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# instance fields
.field bt_search:Landroid/widget/Button;

.field et_searchnews:Landroid/widget/AutoCompleteTextView;

.field inflater1:Landroid/view/LayoutInflater;

.field iv_bolan:Landroid/widget/ImageView;

.field iv_config:Landroid/widget/ImageView;

.field iv_huicui:Landroid/widget/ImageView;

.field iv_more:Landroid/widget/ImageView;

.field iv_zhongxin:Landroid/widget/ImageView;

.field ll_menu:Landroid/widget/LinearLayout;

.field pop:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/SearchActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/olivephone/cu/SearchActivity;->popMore()V

    return-void
.end method

.method private popMore()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    .line 152
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/olivephone/cu/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 151
    iput-object v5, p0, Lcom/olivephone/cu/SearchActivity;->inflater1:Landroid/view/LayoutInflater;

    .line 153
    iget-object v5, p0, Lcom/olivephone/cu/SearchActivity;->inflater1:Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 154
    .local v4, layout:Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    .line 155
    const/4 v6, -0x1

    const/16 v7, 0x37

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 154
    iput-object v5, p0, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    .line 158
    iget-object v5, p0, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 159
    iget-object v5, p0, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v5, p0, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 161
    iget-object v5, p0, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 162
    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 164
    .local v1, iv_guanli:Landroid/widget/ImageView;
    const v5, 0x7f070021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 163
    check-cast v2, Landroid/widget/ImageView;

    .line 165
    .local v2, iv_shoucang:Landroid/widget/ImageView;
    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 166
    .local v3, iv_sousuo:Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, iv_exit:Landroid/widget/ImageView;
    new-instance v5, Lcom/olivephone/cu/SearchActivity$7;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SearchActivity$7;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    new-instance v5, Lcom/olivephone/cu/SearchActivity$8;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SearchActivity$8;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    new-instance v5, Lcom/olivephone/cu/SearchActivity$9;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SearchActivity$9;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    new-instance v5, Lcom/olivephone/cu/SearchActivity$10;

    invoke-direct {v5, p0}, Lcom/olivephone/cu/SearchActivity$10;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const-string v4, "menu_height"

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->requestWindowFeature(I)Z

    .line 49
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->setContentView(I)V

    .line 51
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_zhongxin:Landroid/widget/ImageView;

    .line 52
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_huicui:Landroid/widget/ImageView;

    .line 53
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_bolan:Landroid/widget/ImageView;

    .line 54
    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_config:Landroid/widget/ImageView;

    .line 55
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_more:Landroid/widget/ImageView;

    .line 56
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->ll_menu:Landroid/widget/LinearLayout;

    .line 57
    const-string v3, "menu_height"

    invoke-virtual {p0, v4, v7}, Lcom/olivephone/cu/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "menu_height"

    const/16 v3, 0x1ea

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, menu_height:I
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->ll_menu:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 60
    const/4 v5, -0x1

    const/16 v6, 0x3c

    .line 61
    invoke-direct {v4, v5, v6, v7, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_zhongxin:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$1;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$1;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_huicui:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$2;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$2;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_bolan:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$3;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$3;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_config:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$4;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$4;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->iv_more:Landroid/widget/ImageView;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$5;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$5;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->et_searchnews:Landroid/widget/AutoCompleteTextView;

    .line 117
    sget-object v3, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v3, :cond_b8

    sget-object v3, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 118
    :cond_b8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x109000a

    invoke-direct {v3, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v3, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    .line 121
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c7
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->et_searchnews:Landroid/widget/AutoCompleteTextView;

    sget-object v4, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    const v3, 0x7f070025

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/olivephone/cu/SearchActivity;->bt_search:Landroid/widget/Button;

    .line 123
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity;->bt_search:Landroid/widget/Button;

    new-instance v4, Lcom/olivephone/cu/SearchActivity$6;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/SearchActivity$6;-><init>(Lcom/olivephone/cu/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    return-void
.end method
