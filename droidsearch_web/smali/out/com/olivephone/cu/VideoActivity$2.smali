.class Lcom/olivephone/cu/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/VideoActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/VideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/VideoActivity$2;->this$0:Lcom/olivephone/cu/VideoActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/olivephone/cu/VideoActivity$2;->this$0:Lcom/olivephone/cu/VideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/VideoActivity;->setResult(I)V

    .line 56
    iget-object v0, p0, Lcom/olivephone/cu/VideoActivity$2;->this$0:Lcom/olivephone/cu/VideoActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/VideoActivity;->finish()V

    .line 57
    return-void
.end method
