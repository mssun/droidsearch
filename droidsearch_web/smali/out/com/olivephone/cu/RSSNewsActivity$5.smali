.class Lcom/olivephone/cu/RSSNewsActivity$5;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42f0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_54

    .line 192
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 195
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    .line 196
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_52

    .line 197
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iput v4, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    :cond_52
    move v0, v3

    .line 210
    :goto_53
    return v0

    .line 200
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a6

    .line 201
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 204
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    .line 205
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    if-gez v0, :cond_a4

    .line 206
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    :cond_a4
    move v0, v3

    .line 208
    goto :goto_53

    :cond_a6
    move v0, v4

    .line 210
    goto :goto_53
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    #calls: Lcom/olivephone/cu/RSSNewsActivity;->tool()V
    invoke-static {v0}, Lcom/olivephone/cu/RSSNewsActivity;->access$0(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 215
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 224
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method
