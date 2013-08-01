.class public Lcom/olivephone/util/ImageAndTextListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImageAndTextListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/olivephone/util/ImageAndText;",
        ">;"
    }
.end annotation


# instance fields
.field private asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/util/ImageAndText;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field private resource:I

.field private textCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .registers 5
    .parameter "activity"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/util/ImageAndText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/olivephone/util/ImageAndText;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->textCache:Ljava/util/HashMap;

    .line 36
    iput p2, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->resource:I

    .line 37
    iput-object p3, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->list:Ljava/util/List;

    .line 38
    check-cast p1, Lcom/olivephone/cu/VideoNewsActivity;

    .end local p1
    iget-object v0, p1, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->listView:Landroid/widget/ListView;

    .line 39
    new-instance v0, Lcom/olivephone/util/AsyncTextLoader;

    invoke-direct {v0}, Lcom/olivephone/util/AsyncTextLoader;-><init>()V

    iput-object v0, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/olivephone/util/ImageAndTextListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 45
    .local v0, activity:Landroid/app/Activity;
    move-object/from16 v7, p2

    .line 46
    .local v7, rowView:Landroid/view/View;
    const/4 v11, 0x0

    .line 47
    .local v11, viewCache:Lcom/olivephone/util/ViewCache;
    if-nez v7, :cond_92

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 51
    .local v5, inflater:Landroid/view/LayoutInflater;
    iget v12, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->resource:I

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 53
    new-instance v11, Lcom/olivephone/util/ViewCache;

    .end local v11           #viewCache:Lcom/olivephone/util/ViewCache;
    invoke-direct {v11, v7}, Lcom/olivephone/util/ViewCache;-><init>(Landroid/view/View;)V

    .line 55
    .restart local v11       #viewCache:Lcom/olivephone/util/ViewCache;
    invoke-virtual {v7, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :goto_1e
    rem-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_99

    .line 62
    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    :goto_2f
    invoke-virtual/range {p0 .. p1}, Lcom/olivephone/util/ImageAndTextListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/util/ImageAndText;

    .line 68
    .local v3, iat:Lcom/olivephone/util/ImageAndText;
    invoke-virtual {v11}, Lcom/olivephone/util/ViewCache;->getTv_pubtime()Landroid/widget/TextView;

    move-result-object v10

    .line 69
    .local v10, tv_pubtime:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/olivephone/util/ViewCache;->getTv_bigtitle()Landroid/widget/TextView;

    move-result-object v8

    .line 70
    .local v8, tv_bigtitle:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/olivephone/util/ViewCache;->getTv_newsdesc()Landroid/widget/TextView;

    move-result-object v9

    .line 71
    .local v9, tv_newsdesc:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/olivephone/util/ViewCache;->getIv_img()Landroid/widget/ImageView;

    move-result-object v6

    .line 72
    .local v6, iv_img:Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, imageUrl:Ljava/lang/String;
    const-string v12, "Demo1"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getView:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v12, p0, Lcom/olivephone/util/ImageAndTextListAdapter;->asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

    new-instance v13, Lcom/olivephone/util/ImageAndTextListAdapter$1;

    invoke-direct {v13, p0, v3}, Lcom/olivephone/util/ImageAndTextListAdapter$1;-><init>(Lcom/olivephone/util/ImageAndTextListAdapter;Lcom/olivephone/util/ImageAndText;)V

    invoke-virtual {v12, v4, v13}, Lcom/olivephone/util/AsyncTextLoader;->loadDrawable(Ljava/lang/String;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    .local v1, cachedImage:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getDrawabe()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_a7

    .line 87
    const v12, 0x7f020016

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_74
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getNewsDesc()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, desc:Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_af

    .line 128
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_83
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getBigTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getPubTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-object v7

    .line 58
    .end local v1           #cachedImage:Landroid/graphics/drawable/Drawable;
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #iat:Lcom/olivephone/util/ImageAndText;
    .end local v4           #imageUrl:Ljava/lang/String;
    .end local v6           #iv_img:Landroid/widget/ImageView;
    .end local v8           #tv_bigtitle:Landroid/widget/TextView;
    .end local v9           #tv_newsdesc:Landroid/widget/TextView;
    .end local v10           #tv_pubtime:Landroid/widget/TextView;
    :cond_92
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #viewCache:Lcom/olivephone/util/ViewCache;
    check-cast v11, Lcom/olivephone/util/ViewCache;

    .restart local v11       #viewCache:Lcom/olivephone/util/ViewCache;
    goto :goto_1e

    .line 64
    :cond_99
    const/16 v12, 0xef

    const/16 v13, 0xef

    const/16 v14, 0xef

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2f

    .line 89
    .restart local v1       #cachedImage:Landroid/graphics/drawable/Drawable;
    .restart local v3       #iat:Lcom/olivephone/util/ImageAndText;
    .restart local v4       #imageUrl:Ljava/lang/String;
    .restart local v6       #iv_img:Landroid/widget/ImageView;
    .restart local v8       #tv_bigtitle:Landroid/widget/TextView;
    .restart local v9       #tv_newsdesc:Landroid/widget/TextView;
    .restart local v10       #tv_pubtime:Landroid/widget/TextView;
    :cond_a7
    invoke-virtual {v3}, Lcom/olivephone/util/ImageAndText;->getDrawabe()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_74

    .line 130
    .restart local v2       #desc:Ljava/lang/String;
    :cond_af
    const-string v12, "\u6682\u65e0\u8be6\u7ec6\u65b0\u95fb\uff0c\u8bf7\u89c2\u770b\u89c6\u9891"

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_83
.end method
