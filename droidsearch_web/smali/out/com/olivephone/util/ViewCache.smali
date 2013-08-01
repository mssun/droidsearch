.class public Lcom/olivephone/util/ViewCache;
.super Ljava/lang/Object;
.source "ViewCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private iv_img:Landroid/widget/ImageView;

.field private tv_bigtitle:Landroid/widget/TextView;

.field private tv_newsdesc:Landroid/widget/TextView;

.field private tv_pubtime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "baseView"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/olivephone/util/ViewCache;->baseView:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public getIv_img()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->iv_img:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 22
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/olivephone/util/ViewCache;->iv_img:Landroid/widget/ImageView;

    .line 24
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->iv_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTv_bigtitle()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_bigtitle:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_bigtitle:Landroid/widget/TextView;

    .line 38
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_bigtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTv_newsdesc()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_newsdesc:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 42
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_newsdesc:Landroid/widget/TextView;

    .line 44
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_newsdesc:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTv_pubtime()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_pubtime:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 30
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->baseView:Landroid/view/View;

    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_pubtime:Landroid/widget/TextView;

    .line 32
    :cond_11
    iget-object v0, p0, Lcom/olivephone/util/ViewCache;->tv_pubtime:Landroid/widget/TextView;

    return-object v0
.end method
