.class Lcom/olivephone/cu/DownLoadActivity$8;
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
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0xa

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader_ext:Z

    if-eqz v0, :cond_4f

    .line 225
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iput-boolean v4, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader_ext:Z

    .line 227
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    #calls: Lcom/olivephone/cu/DownLoadActivity;->hiddenDownLoader()V
    invoke-static {v0}, Lcom/olivephone/cu/DownLoadActivity;->access$1(Lcom/olivephone/cu/DownLoadActivity;)V

    .line 228
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v8, v4, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x4e

    invoke-direct {v1, v5, v5, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x15e

    const/16 v3, 0x6e

    invoke-direct {v1, v6, v2, v4, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :goto_4e
    return v4

    .line 232
    :cond_4f
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downloader_ext:Z

    .line 234
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    #calls: Lcom/olivephone/cu/DownLoadActivity;->showDownLoader()V
    invoke-static {v0}, Lcom/olivephone/cu/DownLoadActivity;->access$2(Lcom/olivephone/cu/DownLoadActivity;)V

    .line 235
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->iv_downmanager:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x140

    const/16 v3, 0xfa

    invoke-direct {v1, v2, v8, v4, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->tv_downmanager:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xfd

    invoke-direct {v1, v5, v5, v7, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lcom/olivephone/cu/DownLoadActivity$8;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    iget-object v0, v0, Lcom/olivephone/cu/DownLoadActivity;->lv_file:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0xc8

    const/16 v3, 0x118

    invoke-direct {v1, v6, v2, v4, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e
.end method
