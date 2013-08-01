.class Lcom/olivephone/cu/ShowVideoActivity$1;
.super Ljava/lang/Object;
.source "ShowVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/olivephone/cu/ShowVideoActivity$1;->this$0:Lcom/olivephone/cu/ShowVideoActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/olivephone/cu/ShowVideoActivity$1;->this$0:Lcom/olivephone/cu/ShowVideoActivity;

    iget-object v0, v0, Lcom/olivephone/cu/ShowVideoActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 49
    return-void
.end method
