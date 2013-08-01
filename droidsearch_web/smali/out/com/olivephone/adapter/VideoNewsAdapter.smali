.class public Lcom/olivephone/adapter/VideoNewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoNewsAdapter.java"


# instance fields
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

.field mInflater:Landroid/view/LayoutInflater;

.field private resource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "c"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/olivephone/util/ImageAndText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/olivephone/util/ImageAndText;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput p2, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->resource:I

    .line 23
    iput-object p3, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->list:Ljava/util/List;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    iget-object v5, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/util/ImageAndText;

    .line 46
    .local v0, it:Lcom/olivephone/util/ImageAndText;
    if-nez p2, :cond_13

    .line 47
    iget-object v5, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/olivephone/adapter/VideoNewsAdapter;->resource:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_13
    const v5, 0x7f070044

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    .local v4, tv_pubtime:Landroid/widget/TextView;
    const v5, 0x7f070043

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, tv_bigtitle:Landroid/widget/TextView;
    const v5, 0x7f070045

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, tv_newsdesc:Landroid/widget/TextView;
    const v5, 0x7f070042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, iv_img:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/olivephone/util/ImageAndText;->getPubTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Lcom/olivephone/util/ImageAndText;->getBigTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Lcom/olivephone/util/ImageAndText;->getNewsDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object p2
.end method
