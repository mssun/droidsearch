.class Lcom/olivephone/cu/RSSNewsActivity$16;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->createSelectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field j:I

.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iget v0, p1, Lcom/olivephone/cu/RSSNewsActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->j:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 564
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->checked_rss:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->j:I

    aget-object v0, v1, v2

    .line 566
    .local v0, cateName:Ljava/lang/String;
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v1, v1, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const/4 v2, 0x1

    iput v2, v1, Lcom/olivephone/cu/RSSNewsActivity;->page:I

    .line 570
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v2, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/RSSNewsActivity;->rss_content:[Ljava/lang/String;

    iget v3, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->j:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/olivephone/cu/RSSNewsActivity;->url:Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    #calls: Lcom/olivephone/cu/RSSNewsActivity;->loadNewsList()V
    invoke-static {v1}, Lcom/olivephone/cu/RSSNewsActivity;->access$4(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 574
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-boolean v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    if-eqz v1, :cond_3c

    .line 575
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v1, v1, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$16;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iput-boolean v4, v1, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    .line 578
    :cond_3c
    return v4
.end method
