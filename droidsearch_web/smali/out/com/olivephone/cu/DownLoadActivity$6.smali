.class Lcom/olivephone/cu/DownLoadActivity$6;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$6;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, str:Ljava/lang/String;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 198
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$6;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->loadDownloader()V

    .line 200
    :cond_11
    return-void
.end method
