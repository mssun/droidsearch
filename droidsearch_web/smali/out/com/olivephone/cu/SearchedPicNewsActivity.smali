.class public Lcom/olivephone/cu/SearchedPicNewsActivity;
.super Landroid/app/Activity;
.source "SearchedPicNewsActivity.java"


# instance fields
.field image:Lcom/olivephone/model/Image;

.field iv_picnews:Landroid/widget/ImageView;

.field searchedNews:Lcom/olivephone/model/SearchedNews;

.field tv_picnews:Landroid/widget/TextView;

.field urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v3, 0x7f030014

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchedPicNewsActivity;->setContentView(I)V

    .line 31
    sget-object v3, Lcom/olivephone/util/PicNewsTemp;->searchedNews:Lcom/olivephone/model/SearchedNews;

    iput-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v4}, Lcom/olivephone/model/SearchedNews;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchedPicNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 34
    .local v1, g:Landroid/widget/Gallery;
    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchedPicNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->iv_picnews:Landroid/widget/ImageView;

    .line 35
    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/olivephone/cu/SearchedPicNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->tv_picnews:Landroid/widget/TextView;

    .line 36
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->tv_picnews:Landroid/widget/TextView;

    .line 38
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 41
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v3}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/Image;

    iput-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    .line 43
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    invoke-virtual {v3}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->iv_picnews:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->tv_picnews:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->image:Lcom/olivephone/model/Image;

    invoke-virtual {v4}, Lcom/olivephone/model/Image;->getPicDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v3, Lcom/olivephone/cu/SearchedPicNewsActivity$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/SearchedPicNewsActivity$1;-><init>(Lcom/olivephone/cu/SearchedPicNewsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v3}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->urls:[Ljava/lang/String;

    .line 68
    const/4 v2, 0x0

    .local v2, i:I
    :goto_80
    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v3}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_97

    .line 73
    new-instance v3, Lcom/olivephone/viewswitch/SearchedImageAdapter;

    .line 74
    iget-object v4, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->urls:[Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/olivephone/viewswitch/SearchedImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    return-void

    .line 70
    :cond_97
    iget-object v4, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->urls:[Ljava/lang/String;

    iget-object v3, p0, Lcom/olivephone/cu/SearchedPicNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v3}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v3

    .line 71
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/Image;

    invoke-virtual {v3}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v3

    .line 70
    aput-object v3, v4, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_80
.end method
