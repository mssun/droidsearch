.class Lcom/olivephone/cu/EnshrineVideoDetail$2;
.super Ljava/lang/Object;
.source "EnshrineVideoDetail.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineVideoDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineVideoDetail;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineVideoDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineVideoDetail$2;->this$0:Lcom/olivephone/cu/EnshrineVideoDetail;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineVideoDetail$2;->this$0:Lcom/olivephone/cu/EnshrineVideoDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/EnshrineVideoDetail;->setResult(I)V

    .line 43
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineVideoDetail$2;->this$0:Lcom/olivephone/cu/EnshrineVideoDetail;

    invoke-virtual {v0}, Lcom/olivephone/cu/EnshrineVideoDetail;->finish()V

    .line 44
    return-void
.end method
