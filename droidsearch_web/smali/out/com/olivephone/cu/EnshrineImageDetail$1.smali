.class Lcom/olivephone/cu/EnshrineImageDetail$1;
.super Ljava/lang/Object;
.source "EnshrineImageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineImageDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineImageDetail;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineImageDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineImageDetail$1;->this$0:Lcom/olivephone/cu/EnshrineImageDetail;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineImageDetail$1;->this$0:Lcom/olivephone/cu/EnshrineImageDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/EnshrineImageDetail;->setResult(I)V

    .line 53
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineImageDetail$1;->this$0:Lcom/olivephone/cu/EnshrineImageDetail;

    invoke-virtual {v0}, Lcom/olivephone/cu/EnshrineImageDetail;->finish()V

    .line 54
    return-void
.end method
