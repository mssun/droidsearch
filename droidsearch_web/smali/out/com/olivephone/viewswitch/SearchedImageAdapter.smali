.class public Lcom/olivephone/viewswitch/SearchedImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedImageAdapter.java"


# instance fields
.field drawables:[Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "urls"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->mContext:Landroid/content/Context;

    .line 18
    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    .line 19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p2

    if-lt v0, v1, :cond_f

    .line 22
    return-void

    .line 20
    :cond_f
    iget-object v1, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0xf

    .line 40
    if-nez p2, :cond_27

    .line 41
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/olivephone/viewswitch/SearchedImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    const/16 v3, 0x96

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 49
    :goto_26
    return-object v1

    .line 47
    .end local v1           #image:Landroid/widget/ImageView;
    :cond_27
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #image:Landroid/widget/ImageView;
    goto :goto_26
.end method
