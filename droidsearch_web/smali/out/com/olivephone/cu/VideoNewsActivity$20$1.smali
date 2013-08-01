.class Lcom/olivephone/cu/VideoNewsActivity$20$1;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoNewsActivity$20;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/VideoNewsActivity$20;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoNewsActivity$20;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$20$1;->this$1:Lcom/olivephone/cu/VideoNewsActivity$20;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$20$1;->this$1:Lcom/olivephone/cu/VideoNewsActivity$20;

    #getter for: Lcom/olivephone/cu/VideoNewsActivity$20;->this$0:Lcom/olivephone/cu/VideoNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/VideoNewsActivity$20;->access$0(Lcom/olivephone/cu/VideoNewsActivity$20;)Lcom/olivephone/cu/VideoNewsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/VideoNewsActivity;->finish()V

    .line 1014
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$20$1;->this$1:Lcom/olivephone/cu/VideoNewsActivity$20;

    #getter for: Lcom/olivephone/cu/VideoNewsActivity$20;->this$0:Lcom/olivephone/cu/VideoNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/VideoNewsActivity$20;->access$0(Lcom/olivephone/cu/VideoNewsActivity$20;)Lcom/olivephone/cu/VideoNewsActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/VideoNewsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1015
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/olivephone/cu/VideoNewsActivity$20$1;->this$1:Lcom/olivephone/cu/VideoNewsActivity$20;

    #getter for: Lcom/olivephone/cu/VideoNewsActivity$20;->this$0:Lcom/olivephone/cu/VideoNewsActivity;
    invoke-static {v1}, Lcom/olivephone/cu/VideoNewsActivity$20;->access$0(Lcom/olivephone/cu/VideoNewsActivity$20;)Lcom/olivephone/cu/VideoNewsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/VideoNewsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1016
    return-void
.end method
