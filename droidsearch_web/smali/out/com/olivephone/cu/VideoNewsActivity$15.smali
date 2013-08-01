.class Lcom/olivephone/cu/VideoNewsActivity$15;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->updateChannel()V
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->isext:Z

    if-eqz v0, :cond_22

    .line 778
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/VideoNewsActivity;->isext:Z

    .line 780
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isClickable:Z

    .line 789
    :goto_21
    return v2

    .line 783
    :cond_22
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->iv_detailimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 785
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isext:Z

    .line 786
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$15;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/VideoNewsActivity;->isClickable:Z

    goto :goto_21
.end method
