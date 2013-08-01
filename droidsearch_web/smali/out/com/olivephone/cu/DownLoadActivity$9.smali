.class Lcom/olivephone/cu/DownLoadActivity$9;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager_ext:Z

    if-eqz v0, :cond_1e

    .line 248
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager_ext:Z

    .line 256
    :goto_1d
    return v2

    .line 252
    :cond_1e
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$9;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager_ext:Z

    goto :goto_1d
.end method
