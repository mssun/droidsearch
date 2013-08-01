.class Lcom/olivephone/cu/TextNewsActivity$8;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity$8;)Lcom/olivephone/cu/TextNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 434
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/TextNewsActivity;->isClickable:Z

    if-eqz v0, :cond_59

    .line 435
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->tna:Lcom/olivephone/adapter/TextNewsAdapter;

    invoke-virtual {v0}, Lcom/olivephone/adapter/TextNewsAdapter;->notifyDataSetChanged()V

    .line 436
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->showNewsContent()V
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$2(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 437
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->hiddenNewList()V
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$3(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 438
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput p3, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    .line 440
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v1, v1, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    #calls: Lcom/olivephone/cu/TextNewsActivity;->loadNews(I)V
    invoke-static {v0, v1}, Lcom/olivephone/cu/TextNewsActivity;->access$4(Lcom/olivephone/cu/TextNewsActivity;I)V

    .line 444
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u65b0\u95fb,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->pd_loadNews:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 449
    new-instance v0, Lcom/olivephone/cu/TextNewsActivity$8$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/TextNewsActivity$8$1;-><init>(Lcom/olivephone/cu/TextNewsActivity$8;)V

    .line 460
    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity$8$1;->start()V

    .line 462
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$8;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$8$2;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/TextNewsActivity$8$2;-><init>(Lcom/olivephone/cu/TextNewsActivity$8;)V

    iput-object v1, v0, Lcom/olivephone/cu/TextNewsActivity;->handler1:Landroid/os/Handler;

    .line 472
    :cond_59
    return-void
.end method
