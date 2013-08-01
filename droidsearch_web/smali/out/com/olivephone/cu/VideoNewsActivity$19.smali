.class Lcom/olivephone/cu/VideoNewsActivity$19;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->popMore()V
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$19;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 987
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$19;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 988
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$19;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const-class v2, Lcom/olivephone/cu/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 989
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$19;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/VideoNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 990
    const/4 v1, 0x0

    return v1
.end method
