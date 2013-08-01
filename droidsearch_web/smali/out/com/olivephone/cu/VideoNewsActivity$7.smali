.class Lcom/olivephone/cu/VideoNewsActivity$7;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->isFirstRun:Z

    if-eqz v0, :cond_c

    .line 360
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isFirstRun:Z

    .line 390
    :cond_b
    :goto_b
    return-void

    .line 364
    :cond_c
    if-nez p2, :cond_12

    if-nez p3, :cond_12

    if-eqz p4, :cond_b

    .line 368
    :cond_12
    const-string v0, "firstVisibleItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "visibleItemCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v0, "totalItemCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    add-int v0, p2, p3

    if-ne v0, p4, :cond_b

    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->isRefresh:Z

    if-eqz v0, :cond_b

    .line 373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "totalItemCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    .line 375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/VideoNewsActivity;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/VideoNewsActivity;->isRefresh:Z

    .line 377
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    const v2, 0x7f07001d

    invoke-virtual {v0, v2}, Lcom/olivephone/cu/VideoNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/olivephone/cu/VideoNewsActivity;->tv_loadtext:Landroid/widget/TextView;

    .line 382
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->isLast:Z

    if-eqz v0, :cond_bb

    .line 383
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->tv_loadtext:Landroid/widget/TextView;

    const-string v1, "\u6700\u540e\u4e00\u6761\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :goto_a8
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->tv_loadtext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    new-instance v0, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;

    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    invoke-direct {v0, v1}, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;-><init>(Lcom/olivephone/cu/VideoNewsActivity;)V

    invoke-virtual {v0}, Lcom/olivephone/cu/VideoNewsActivity$LoadThread;->start()V

    goto/16 :goto_b

    .line 385
    :cond_bb
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$7;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/VideoNewsActivity;->tv_loadtext:Landroid/widget/TextView;

    const-string v1, "\u6570\u636e\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a8
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 393
    return-void
.end method
