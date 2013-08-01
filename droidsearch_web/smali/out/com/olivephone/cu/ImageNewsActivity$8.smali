.class Lcom/olivephone/cu/ImageNewsActivity$8;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "id"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->urls:[Ljava/lang/String;

    aget-object v1, v1, p3

    iput-object v1, v0, Lcom/olivephone/cu/ImageNewsActivity;->message:Ljava/lang/String;

    .line 404
    const-string v0, "id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput p3, v0, Lcom/olivephone/cu/ImageNewsActivity;->uuid:I

    .line 407
    sput-boolean v3, Lcom/olivephone/constant/MyThread;->isAlive:Z

    .line 408
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    #calls: Lcom/olivephone/cu/ImageNewsActivity;->loadImageDetial(I)V
    invoke-static {v0, p3}, Lcom/olivephone/cu/ImageNewsActivity;->access$1(Lcom/olivephone/cu/ImageNewsActivity;I)V

    .line 410
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_78

    .line 411
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ImageNewsActivity;->list_image_news:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_78

    .line 412
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    .line 413
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/ImageNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 415
    new-instance v0, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$8;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-direct {v0, v1}, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;-><init>(Lcom/olivephone/cu/ImageNewsActivity;)V

    invoke-virtual {v0}, Lcom/olivephone/cu/ImageNewsActivity$LoadThread;->start()V

    .line 418
    :cond_78
    return-void
.end method
