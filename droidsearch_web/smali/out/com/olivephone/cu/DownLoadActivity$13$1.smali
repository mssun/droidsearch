.class Lcom/olivephone/cu/DownLoadActivity$13$1;
.super Landroid/os/Handler;
.source "DownLoadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity$13;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/DownLoadActivity$13;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity$13;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$13$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$13;

    .line 499
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 501
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, rs:Ljava/lang/String;
    const-string v1, "over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 503
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$13$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$13;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$13;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v1}, Lcom/olivephone/cu/DownLoadActivity$13;->access$0(Lcom/olivephone/cu/DownLoadActivity$13;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->loadDownloader()V

    .line 504
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$13$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$13;

    iget-object v1, v1, Lcom/olivephone/cu/DownLoadActivity$13;->iv_pause:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 506
    :cond_1f
    return-void
.end method
