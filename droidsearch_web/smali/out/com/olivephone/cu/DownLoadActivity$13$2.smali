.class Lcom/olivephone/cu/DownLoadActivity$13$2;
.super Ljava/lang/Thread;
.source "DownLoadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity$13;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/DownLoadActivity$13;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity$13;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$13$2;->this$1:Lcom/olivephone/cu/DownLoadActivity$13;

    iput-object p2, p0, Lcom/olivephone/cu/DownLoadActivity$13$2;->val$handler:Landroid/os/Handler;

    .line 509
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 512
    :cond_0
    sget-boolean v1, Lcom/olivephone/constant/BooleanConstant;->IS_OVER:Z

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$13$2;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-string v3, "over"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 514
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$13$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    const/4 v1, 0x0

    sput-boolean v1, Lcom/olivephone/constant/BooleanConstant;->IS_OVER:Z

    .line 519
    return-void
.end method
