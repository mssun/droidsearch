.class Lcom/olivephone/cu/TextNewsActivity$13$1;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$13;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$13;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$13;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$13$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$13;

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$13$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$13;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$13;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity$13;->access$0(Lcom/olivephone/cu/TextNewsActivity$13;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 838
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 837
    return v0
.end method
