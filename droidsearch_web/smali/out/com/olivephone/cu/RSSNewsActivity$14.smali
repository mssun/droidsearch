.class Lcom/olivephone/cu/RSSNewsActivity$14;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->loadChannelData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$14;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$14;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const-class v2, Lcom/olivephone/cu/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$14;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/RSSNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 503
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$14;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/RSSNewsActivity;->finish()V

    .line 504
    return-void
.end method
