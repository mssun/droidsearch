.class Lcom/olivephone/cu/TextNewsActivity$3;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$3;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$3;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/TextNewsActivity;->finish()V

    .line 283
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$3;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 284
    const-class v2, Lcom/olivephone/cu/ImageNewsActivity;

    .line 283
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, intent1:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$3;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    const/4 v1, 0x0

    return v1
.end method
