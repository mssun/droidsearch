.class Lcom/olivephone/cu/RSSNewsActivity$6$2;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$6$2;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    .line 258
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 261
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6$2;->this$1:Lcom/olivephone/cu/RSSNewsActivity$6;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v0}, Lcom/olivephone/cu/RSSNewsActivity$6;->access$0(Lcom/olivephone/cu/RSSNewsActivity$6;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v0

    #calls: Lcom/olivephone/cu/RSSNewsActivity;->showNewsContent()V
    invoke-static {v0}, Lcom/olivephone/cu/RSSNewsActivity;->access$2(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 263
    :cond_17
    return-void
.end method
