.class Lcom/olivephone/cu/VideoNewsActivity$11;
.super Ljava/lang/Object;
.source "VideoNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/olivephone/cu/VideoNewsActivity$11;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$11;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->showNewList()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$3(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 479
    iget-object v0, p0, Lcom/olivephone/cu/VideoNewsActivity$11;->this$0:Lcom/olivephone/cu/VideoNewsActivity;

    #calls: Lcom/olivephone/cu/VideoNewsActivity;->hiddenVideo()V
    invoke-static {v0}, Lcom/olivephone/cu/VideoNewsActivity;->access$4(Lcom/olivephone/cu/VideoNewsActivity;)V

    .line 481
    return-void
.end method
