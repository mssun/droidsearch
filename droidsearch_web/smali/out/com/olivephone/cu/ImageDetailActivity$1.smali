.class Lcom/olivephone/cu/ImageDetailActivity$1;
.super Ljava/lang/Object;
.source "ImageDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageDetailActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageDetailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageDetailActivity$1;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/olivephone/cu/ImageDetailActivity$1;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/ImageDetailActivity;->is_touch:Z

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/olivephone/cu/ImageDetailActivity$1;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/ImageDetailActivity;->setResult(I)V

    .line 74
    iget-object v0, p0, Lcom/olivephone/cu/ImageDetailActivity$1;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/ImageDetailActivity;->finish()V

    .line 76
    :cond_11
    return-void
.end method
