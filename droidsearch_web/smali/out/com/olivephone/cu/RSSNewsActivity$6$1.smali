.class Lcom/olivephone/cu/RSSNewsActivity$6$1;
.super Ljava/lang/Thread;
.source "RSSNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/RSSNewsActivity$6;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity$6;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$6$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    .line 245
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 248
    const-wide/16 v2, 0x7d0

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 249
    iget-object v2, p0, Lcom/olivephone/cu/RSSNewsActivity$6$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v2}, Lcom/olivephone/cu/RSSNewsActivity$6;->access$0(Lcom/olivephone/cu/RSSNewsActivity$6;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/RSSNewsActivity;->handler1:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "msg"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 250
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/olivephone/cu/RSSNewsActivity$6$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v2}, Lcom/olivephone/cu/RSSNewsActivity$6;->access$0(Lcom/olivephone/cu/RSSNewsActivity$6;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/RSSNewsActivity;->handler1:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    iget-object v2, p0, Lcom/olivephone/cu/RSSNewsActivity$6$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v2}, Lcom/olivephone/cu/RSSNewsActivity$6;->access$0(Lcom/olivephone/cu/RSSNewsActivity$6;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/RSSNewsActivity;->pd_load_news:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 255
    .end local v1           #msg:Landroid/os/Message;
    :goto_2a
    return-void

    .line 252
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 253
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2a
.end method
