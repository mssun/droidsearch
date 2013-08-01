.class Lcom/olivephone/cu/RSSNewsActivity$1;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$1;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2f

    .line 128
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$1;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$1;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 130
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$1;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$1;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/RSSNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    const/16 v2, 0x30

    const/16 v3, 0x41

    .line 130
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 133
    :cond_2f
    return v4
.end method
