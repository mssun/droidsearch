.class Lcom/olivephone/cu/DownLoadActivity$4;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/DownLoadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/DownLoadActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/DownLoadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/DownLoadActivity$4;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$4;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/DownLoadActivity;->finish()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$4;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    .line 154
    const-class v2, Lcom/olivephone/cu/SettingActivity;

    .line 153
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, intent3:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/DownLoadActivity$4;->this$0:Lcom/olivephone/cu/DownLoadActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/DownLoadActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    const/4 v1, 0x0

    return v1
.end method
