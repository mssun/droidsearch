.class Lcom/olivephone/cu/TextNewsActivity$14;
.super Ljava/lang/Thread;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->loadNews(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$14;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 954
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 958
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$14;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->handler_webview:Landroid/os/Handler;

    const/4 v2, 0x1

    const-string v3, "msg"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 959
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$14;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->handler_webview:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 960
    return-void
.end method
