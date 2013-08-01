.class Lcom/olivephone/cu/TextNewsActivity$22$1;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$22;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$22;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$22;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$22$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$22;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$22;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/TextNewsActivity$22;->access$0(Lcom/olivephone/cu/TextNewsActivity$22;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/TextNewsActivity;->finish()V

    .line 1437
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$22;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/TextNewsActivity$22;->access$0(Lcom/olivephone/cu/TextNewsActivity$22;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v1

    const-class v2, Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1438
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$22;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/TextNewsActivity$22;->access$0(Lcom/olivephone/cu/TextNewsActivity$22;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1439
    return-void
.end method
