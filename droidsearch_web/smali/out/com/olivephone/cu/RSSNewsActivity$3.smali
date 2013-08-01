.class Lcom/olivephone/cu/RSSNewsActivity$3;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$3;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$3;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const-class v2, Lcom/olivephone/cu/RSSNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$3;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/RSSNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$3;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/RSSNewsActivity;->finish()V

    .line 170
    const/4 v1, 0x0

    return v1
.end method
