.class Lcom/olivephone/cu/ImageNewsActivity$11;
.super Ljava/lang/Thread;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->loadImageDetial(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;

.field private final synthetic val$myid:I


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput p2, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->val$myid:I

    .line 510
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 512
    new-instance v0, Lcom/olivephone/model/DrawableListUUID;

    invoke-direct {v0}, Lcom/olivephone/model/DrawableListUUID;-><init>()V

    .line 513
    .local v0, dluuid:Lcom/olivephone/model/DrawableListUUID;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5}, Lcom/olivephone/model/DrawableListUUID;->setList_img_drawable(Ljava/util/List;)V

    .line 515
    const-string v5, "size"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v7, v7, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, 0x0

    .local v2, i:I
    :goto_28
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_33

    .line 542
    return-void

    .line 521
    :cond_33
    sget-boolean v5, Lcom/olivephone/constant/MyThread;->isAlive:Z

    if-eqz v5, :cond_68

    .line 523
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/olivephone/model/Image;

    .line 525
    .local v3, image:Lcom/olivephone/model/Image;
    invoke-virtual {v3}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/olivephone/util/ImageLoad;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 526
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Lcom/olivephone/model/Image;->setPicDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    invoke-virtual {v0}, Lcom/olivephone/model/DrawableListUUID;->getList_img_drawable()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget v5, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->val$myid:I

    invoke-virtual {v0, v5}, Lcom/olivephone/model/DrawableListUUID;->setUuid(I)V

    .line 536
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->handler_loadImage:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 537
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$11;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->handler_loadImage:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #image:Lcom/olivephone/model/Image;
    .end local v4           #msg:Landroid/os/Message;
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method
