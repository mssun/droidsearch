.class Lcom/olivephone/cu/XHNewsActivity$2;
.super Ljava/lang/Object;
.source "XHNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XHNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/XHNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XHNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XHNewsActivity$2;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity$2;->this$0:Lcom/olivephone/cu/XHNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
