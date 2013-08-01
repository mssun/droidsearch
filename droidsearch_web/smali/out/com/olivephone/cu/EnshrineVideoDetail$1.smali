.class Lcom/olivephone/cu/EnshrineVideoDetail$1;
.super Ljava/lang/Object;
.source "EnshrineVideoDetail.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineVideoDetail$1;->this$0:Lcom/olivephone/cu/EnshrineVideoDetail;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineVideoDetail$1;->this$0:Lcom/olivephone/cu/EnshrineVideoDetail;

    iget-object v0, v0, Lcom/olivephone/cu/EnshrineVideoDetail;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 37
    return-void
.end method
