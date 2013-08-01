.class Lcom/olivephone/cu/DownLoadActivity$17$1;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity$17;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/DownLoadActivity$17;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity$17;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$17$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$17;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 604
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$17$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$17;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$17;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v1}, Lcom/olivephone/cu/DownLoadActivity$17;->access$0(Lcom/olivephone/cu/DownLoadActivity$17;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->finish()V

    .line 612
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$17$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$17;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$17;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v1}, Lcom/olivephone/cu/DownLoadActivity$17;->access$0(Lcom/olivephone/cu/DownLoadActivity$17;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/DownLoadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 613
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$17$1;->this$1:Lcom/olivephone/cu/DownLoadActivity$17;

    #getter for: Lcom/olivephone/cu/DownLoadActivity$17;->this$0:Lcom/olivephone/cu/DownLoadActivity;
    invoke-static {v1}, Lcom/olivephone/cu/DownLoadActivity$17;->access$0(Lcom/olivephone/cu/DownLoadActivity$17;)Lcom/olivephone/cu/DownLoadActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 614
    return-void
.end method
