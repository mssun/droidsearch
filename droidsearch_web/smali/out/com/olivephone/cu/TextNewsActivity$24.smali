.class Lcom/olivephone/cu/TextNewsActivity$24;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->popMore()V
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$24;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1483
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$24;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1484
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$24;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1485
    const-class v2, Lcom/olivephone/cu/EnshrineActivity;

    .line 1484
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1486
    .local v0, intent3:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$24;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/TextNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1487
    const/4 v1, 0x0

    return v1
.end method
