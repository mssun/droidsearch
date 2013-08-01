.class Lcom/olivephone/cu/VideoNewsActivity$16;
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
.field j:I

.field final synthetic this$0:Lcom/olivephone/cu/VideoNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iget v0, p1, Lcom/olivephone/cu/VideoNewsActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->j:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 799
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->showNewList()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$3(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 802
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/VideoNewsActivity;->checked_rss:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->j:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/olivephone/cu/VideoNewsActivity;->cateID:Ljava/lang/String;

    .line 804
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 805
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->video_news:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 806
    :cond_1f
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 807
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->imageTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 809
    :cond_2c
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->updateNewsList()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$5(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 811
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/VideoNewsActivity;->rss_content:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->isext:Z

    if-eqz v0, :cond_69

    .line 813
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isLast:Z

    .line 814
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    .line 815
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->showNewList()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$3(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 817
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->hiddenVideo()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$4(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 818
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$16;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isext:Z

    .line 820
    :cond_69
    return v3
.end method
