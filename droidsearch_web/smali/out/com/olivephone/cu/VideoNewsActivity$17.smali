.class Lcom/olivephone/cu/VideoNewsActivity$17;
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$17;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 966
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$17;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/VideoNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 967
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$17;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 968
    const-class v2, Lcom/olivephone/cu/DownLoadActivity;

    .line 967
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$17;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/olivephone/cu/VideoNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 970
    const/4 v1, 0x0

    return v1
.end method
