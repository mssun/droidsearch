.class public Lcom/olivephone/model/DrawableListUUID;
.super Ljava/lang/Object;
.source "DrawableListUUID.java"


# instance fields
.field private list_img_drawable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private uuid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList_img_drawable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/olivephone/model/DrawableListUUID;->list_img_drawable:Ljava/util/List;

    return-object v0
.end method

.method public getUuid()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/olivephone/model/DrawableListUUID;->uuid:I

    return v0
.end method

.method public setList_img_drawable(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, listImgDrawable:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/olivephone/model/DrawableListUUID;->list_img_drawable:Ljava/util/List;

    .line 16
    return-void
.end method

.method public setUuid(I)V
    .registers 2
    .parameter "uuid"

    .prologue
    .line 18
    iput p1, p0, Lcom/olivephone/model/DrawableListUUID;->uuid:I

    .line 19
    return-void
.end method
