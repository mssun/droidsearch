.class Lcom/olivephone/cu/VideoNewsActivity$9;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$9;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 435
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$9;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const-class v3, Lcom/olivephone/cu/VideoActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "videourl"

    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$9;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->videourl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "bigtitle"

    iget-object v3, p0, Lcom/olivephone/cu/VideoNewsActivity$9;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/VideoNewsActivity;->bigtitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 441
    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$9;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/olivephone/cu/VideoNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 443
    const/4 v2, 0x0

    return v2
.end method
