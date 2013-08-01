.class Lcom/olivephone/cu/EnshrineActivity$3;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$3;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$3;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/EnshrineActivity;->finish()V

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$3;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    .line 108
    const-class v2, Lcom/olivephone/cu/VideoNewsActivity;

    .line 107
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, intent2:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$3;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/EnshrineActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v1, 0x0

    return v1
.end method
