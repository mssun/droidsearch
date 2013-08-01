.class Lcom/olivephone/cu/VideoNewsActivity$14;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->loadChannelData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const-class v3, Lcom/olivephone/cu/LoadChannelService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    .local v0, channelIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v2, v0}, Lcom/olivephone/cu/VideoNewsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 734
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v2}, Lcom/olivephone/cu/VideoNewsActivity;->finish()V

    .line 735
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const-class v3, Lcom/olivephone/cu/SettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v2, v1}, Lcom/olivephone/cu/VideoNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 737
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$14;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v2}, Lcom/olivephone/cu/VideoNewsActivity;->finish()V

    .line 738
    return-void
.end method
