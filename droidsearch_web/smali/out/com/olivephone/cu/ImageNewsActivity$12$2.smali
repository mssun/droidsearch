.class Lcom/olivephone/cu/ImageNewsActivity$12$2;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

.field private final synthetic val$imageNews:Lcom/olivephone/model/ImageNews;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity$12;Lcom/olivephone/model/ImageNews;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    iput-object p2, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->val$imageNews:Lcom/olivephone/model/ImageNews;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iget v0, p1, Lcom/olivephone/cu/ImageNewsActivity$12;->L:I

    iput v0, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->id:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->isClickable:Z

    if-eqz v1, :cond_5b

    .line 588
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    const-class v2, Lcom/olivephone/cu/ImageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "img_url"

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    iget v3, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->id:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/Image;

    invoke-virtual {v1}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    iget v2, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/olivephone/model/Image;

    invoke-virtual {v1}, Lcom/olivephone/model/Image;->getPicDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    .line 591
    const-string v1, "img_title"

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->val$imageNews:Lcom/olivephone/model/ImageNews;

    invoke-virtual {v2}, Lcom/olivephone/model/ImageNews;->getBigTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$12$2;->this$1:Lcom/olivephone/cu/ImageNewsActivity$12;

    #getter for: Lcom/olivephone/cu/ImageNewsActivity$12;->this$0:Lcom/olivephone/cu/ImageNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/ImageNewsActivity$12;->access$0(Lcom/olivephone/cu/ImageNewsActivity$12;)Lcom/olivephone/cu/ImageNewsActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/olivephone/cu/ImageNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5b
    return-void
.end method
