.class Lcom/olivephone/cu/ShowVideoActivity$2;
.super Ljava/lang/Object;
.source "ShowVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ShowVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ShowVideoActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ShowVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ShowVideoActivity$2;->this$0:Lcom/olivephone/cu/ShowVideoActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/olivephone/cu/ShowVideoActivity$2;->this$0:Lcom/olivephone/cu/ShowVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/olivephone/cu/ShowVideoActivity;->setResult(I)V

    .line 55
    iget-object v0, p0, Lcom/olivephone/cu/ShowVideoActivity$2;->this$0:Lcom/olivephone/cu/ShowVideoActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/ShowVideoActivity;->finish()V

    .line 56
    return-void
.end method
