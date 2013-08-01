.class Lcom/olivephone/cu/DownLoadActivity$14;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->popMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$14;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$14;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v1, v1, Lcom/olivephone/cu/DownLoadActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 563
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$14;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 564
    const-class v2, Lcom/olivephone/cu/DownLoadActivity;

    .line 563
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$14;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/olivephone/cu/DownLoadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    const/4 v1, 0x0

    return v1
.end method
