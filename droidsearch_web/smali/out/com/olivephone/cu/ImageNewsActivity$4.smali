.class Lcom/olivephone/cu/ImageNewsActivity$4;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$4;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$4;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/ImageNewsActivity;->finish()V

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$4;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 287
    const-class v2, Lcom/olivephone/cu/VideoNewsActivity;

    .line 286
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, intent2:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$4;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/ImageNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 289
    const/4 v1, 0x0

    return v1
.end method
