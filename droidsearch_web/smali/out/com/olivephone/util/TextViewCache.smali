.class public Lcom/olivephone/util/TextViewCache;
.super Ljava/lang/Object;
.source "TextViewCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private bigTitle:Landroid/widget/TextView;

.field private loadImage:Landroid/widget/ImageView;

.field private newsDesc:Landroid/widget/TextView;

.field private pubTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "baseView"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public getBigTitle()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->bigTitle:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/TextViewCache;->bigTitle:Landroid/widget/TextView;

    .line 35
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->bigTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLoadImage()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->loadImage:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 24
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/olivephone/util/TextViewCache;->loadImage:Landroid/widget/ImageView;

    .line 26
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->loadImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNewsDesc()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->newsDesc:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/TextViewCache;->newsDesc:Landroid/widget/TextView;

    .line 53
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->newsDesc:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPubTime()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->pubTime:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 42
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/TextViewCache;->pubTime:Landroid/widget/TextView;

    .line 44
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/TextViewCache;->pubTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBaseView(Landroid/view/View;)V
    .registers 2
    .parameter "baseView"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->baseView:Landroid/view/View;

    .line 21
    return-void
.end method

.method public setBigTitle(Landroid/widget/TextView;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->bigTitle:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public setLoadImage(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "loadImage"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->loadImage:Landroid/widget/ImageView;

    .line 30
    return-void
.end method

.method public setNewsDesc(Landroid/widget/TextView;)V
    .registers 2
    .parameter "newsDesc"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->newsDesc:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public setPubTime(Landroid/widget/TextView;)V
    .registers 2
    .parameter "pubTime"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/olivephone/util/TextViewCache;->pubTime:Landroid/widget/TextView;

    .line 48
    return-void
.end method
