.class Lcom/olivephone/cu/TextNewsActivity$11$1;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$11;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$11;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$11$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$11;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$11$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$11;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$11;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity$11;->access$0(Lcom/olivephone/cu/TextNewsActivity$11;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 781
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 780
    return v0
.end method
