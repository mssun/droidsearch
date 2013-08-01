.class public Lcom/olivephone/adapter/TextNewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextNewsAdapter.java"


# instance fields
.field private asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

.field c:Landroid/content/Context;

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

.field listView:Landroid/widget/ListView;

.field mInflater:Landroid/view/LayoutInflater;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .registers 5
    .parameter "c"
    .parameter
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/olivephone/adapter/TextNewsAdapter;->textCache:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/olivephone/adapter/TextNewsAdapter;->c:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/olivephone/adapter/TextNewsAdapter;->list:Ljava/util/List;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/adapter/TextNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    new-instance v0, Lcom/olivephone/util/AsyncTextLoader;

    invoke-direct {v0}, Lcom/olivephone/util/AsyncTextLoader;-><init>()V

    iput-object v0, p0, Lcom/olivephone/adapter/TextNewsAdapter;->asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

    .line 40
    iput-object p3, p0, Lcom/olivephone/adapter/TextNewsAdapter;->listView:Landroid/widget/ListView;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/olivephone/adapter/TextNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/olivephone/adapter/TextNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    move-object v6, p2

    .line 60
    .local v6, rowView:Landroid/view/View;
    if-nez v6, :cond_82

    .line 61
    iget-object v9, p0, Lcom/olivephone/adapter/TextNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03001a

    .line 62
    const/4 v11, 0x0

    .line 61
    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 63
    new-instance v7, Lcom/olivephone/util/TextViewCache;

    invoke-direct {v7, v6}, Lcom/olivephone/util/TextViewCache;-><init>(Landroid/view/View;)V

    .line 64
    .local v7, textViewCache:Lcom/olivephone/util/TextViewCache;
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_15
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_89

    .line 69
    const v9, 0x7f020043

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    :goto_1f
    iget-object v9, p0, Lcom/olivephone/adapter/TextNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/olivephone/model/TextNews;

    .line 75
    .local v8, tn:Lcom/olivephone/model/TextNews;
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getImg()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, imageUrl:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/olivephone/util/TextViewCache;->getLoadImage()Landroid/widget/ImageView;

    move-result-object v3

    .line 77
    .local v3, loadImage:Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_98

    .line 82
    iget-object v9, p0, Lcom/olivephone/adapter/TextNewsAdapter;->asyncTextLoader:Lcom/olivephone/util/AsyncTextLoader;

    .line 83
    new-instance v10, Lcom/olivephone/adapter/TextNewsAdapter$1;

    invoke-direct {v10, p0, v8}, Lcom/olivephone/adapter/TextNewsAdapter$1;-><init>(Lcom/olivephone/adapter/TextNewsAdapter;Lcom/olivephone/model/TextNews;)V

    .line 82
    invoke-virtual {v9, v2, v10}, Lcom/olivephone/util/AsyncTextLoader;->loadDrawable(Ljava/lang/String;Lcom/olivephone/util/AsyncTextLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, cachedImage:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_90

    .line 112
    const v9, 0x7f020017

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    .end local v1           #cachedImage:Landroid/graphics/drawable/Drawable;
    :goto_51
    const v9, 0x7f07003c

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, pubTime:Landroid/widget/TextView;
    const v9, 0x7f07003b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, bigTitle:Landroid/widget/TextView;
    const v9, 0x7f07003d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 165
    .local v4, newsDesc:Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getPubTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getNewsDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object v6

    .line 66
    .end local v0           #bigTitle:Landroid/widget/TextView;
    .end local v2           #imageUrl:Ljava/lang/String;
    .end local v3           #loadImage:Landroid/widget/ImageView;
    .end local v4           #newsDesc:Landroid/widget/TextView;
    .end local v5           #pubTime:Landroid/widget/TextView;
    .end local v7           #textViewCache:Lcom/olivephone/util/TextViewCache;
    .end local v8           #tn:Lcom/olivephone/model/TextNews;
    :cond_82
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/olivephone/util/TextViewCache;

    .restart local v7       #textViewCache:Lcom/olivephone/util/TextViewCache;
    goto :goto_15

    .line 72
    :cond_89
    const v9, 0x7f020042

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1f

    .line 114
    .restart local v1       #cachedImage:Landroid/graphics/drawable/Drawable;
    .restart local v2       #imageUrl:Ljava/lang/String;
    .restart local v3       #loadImage:Landroid/widget/ImageView;
    .restart local v8       #tn:Lcom/olivephone/model/TextNews;
    :cond_90
    invoke-virtual {v8}, Lcom/olivephone/model/TextNews;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 119
    .end local v1           #cachedImage:Landroid/graphics/drawable/Drawable;
    :cond_98
    const v9, 0x7f020017

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51
.end method
