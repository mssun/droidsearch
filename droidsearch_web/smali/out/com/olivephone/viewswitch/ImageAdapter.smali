.class public Lcom/olivephone/viewswitch/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field drawables:[Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "urls"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/olivephone/viewswitch/ImageAdapter;->mContext:Landroid/content/Context;

    .line 19
    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/olivephone/viewswitch/ImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p2

    if-lt v0, v1, :cond_f

    .line 23
    return-void

    .line 21
    :cond_f
    iget-object v1, p0, Lcom/olivephone/viewswitch/ImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/olivephone/viewswitch/ImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

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
    .line 34
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/olivephone/viewswitch/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, image:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/olivephone/viewswitch/ImageAdapter;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x64

    const/16 v3, 0x3c

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    return-object v0
.end method
