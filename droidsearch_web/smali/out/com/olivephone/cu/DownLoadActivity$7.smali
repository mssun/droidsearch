.class Lcom/olivephone/cu/DownLoadActivity$7;
.super Ljava/lang/Thread;
.source "DownLoadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$7;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 206
    :goto_0
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$7;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->handler1:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "msg"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 207
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/olivephone/cu/DownLoadActivity$7;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v2, v2, Lcom/olivephone/cu/DownLoadActivity;->handler1:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    const-wide/16 v2, 0x3e8

    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_0

    .line 210
    :catch_18
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
