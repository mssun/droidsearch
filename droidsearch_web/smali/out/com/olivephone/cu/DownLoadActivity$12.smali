.class Lcom/olivephone/cu/DownLoadActivity$12;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->loadDownloader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$12;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iget v0, p1, Lcom/olivephone/cu/DownLoadActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/DownLoadActivity$12;->index:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 476
    sget-object v1, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    iget v2, p0, Lcom/olivephone/cu/DownLoadActivity$12;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/DownLoadFile;

    .line 477
    .local v0, dlf:Lcom/olivephone/model/DownLoadFile;
    invoke-virtual {v0, v3}, Lcom/olivephone/model/DownLoadFile;->setAlive(Z)V

    .line 478
    sget-object v1, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    iget v2, p0, Lcom/olivephone/cu/DownLoadActivity$12;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$12;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->loadDownloader()V

    .line 481
    return v3
.end method
