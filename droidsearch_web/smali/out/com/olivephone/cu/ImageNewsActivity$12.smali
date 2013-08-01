.class Lcom/olivephone/cu/ImageNewsActivity$12;
.super Landroid/os/Handler;
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
.field L:I

.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;

.field private final synthetic val$imageNews:Lcom/olivephone/model/ImageNews;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;Lcom/olivephone/model/ImageNews;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput-object p2, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->val$imageNews:Lcom/olivephone/model/ImageNews;

    .line 547
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->L:I

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 550
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/olivephone/model/DrawableListUUID;

    .line 552
    .local v0, dluuid:Lcom/olivephone/model/DrawableListUUID;
    invoke-virtual {v0}, Lcom/olivephone/model/DrawableListUUID;->getUuid()I

    move-result v6

    iget-object v7, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v7, v7, Lcom/olivephone/cu/ImageNewsActivity;->uuid:I

    if-eq v6, v7, :cond_f

    .line 601
    :cond_e
    return-void

    .line 555
    :cond_f
    invoke-virtual {v0}, Lcom/olivephone/model/DrawableListUUID;->getList_img_drawable()Ljava/util/List;

    move-result-object v5

    .line 556
    .local v5, list_drawable:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 559
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    .line 560
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    iget-object v7, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v7, v7, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/olivephone/model/Image;

    .line 561
    .local v2, img:Lcom/olivephone/model/Image;
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-virtual {v2}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/olivephone/cu/ImageNewsActivity;->dl_url:Ljava/lang/String;

    .line 562
    const-string v6, "list_images.size()"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "drawablesize="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    const/4 v4, 0x0

    .local v4, j:I
    :goto_69
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    .line 566
    iput v4, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->L:I

    .line 567
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v4, v6, :cond_e

    .line 570
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "j="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/Image;

    .line 572
    .local v1, image:Lcom/olivephone/model/Image;
    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v4}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x3f3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 573
    .local v3, iv:Landroid/widget/ImageView;
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b8

    .line 574
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    :cond_b8
    new-instance v6, Lcom/olivephone/cu/ImageNewsActivity$12$1;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/ImageNewsActivity$12$1;-><init>(Lcom/olivephone/cu/ImageNewsActivity$12;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    new-instance v6, Lcom/olivephone/cu/ImageNewsActivity$12$2;

    iget-object v7, p0, Lcom/olivephone/cu/ImageNewsActivity$12;->val$imageNews:Lcom/olivephone/model/ImageNews;

    invoke-direct {v6, p0, v7}, Lcom/olivephone/cu/ImageNewsActivity$12$2;-><init>(Lcom/olivephone/cu/ImageNewsActivity$12;Lcom/olivephone/model/ImageNews;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_69
.end method
