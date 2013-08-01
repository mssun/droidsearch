.class Lcom/olivephone/cu/XinHuaLaunch$1$1;
.super Ljava/lang/Object;
.source "XinHuaLaunch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XinHuaLaunch$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/XinHuaLaunch$1;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XinHuaLaunch$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    #getter for: Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;
    invoke-static {v1}, Lcom/olivephone/cu/XinHuaLaunch$1;->access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;

    move-result-object v1

    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    #getter for: Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;
    invoke-static {v2}, Lcom/olivephone/cu/XinHuaLaunch$1;->access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;

    move-result-object v2

    iget-object v2, v2, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    #getter for: Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;
    invoke-static {v1}, Lcom/olivephone/cu/XinHuaLaunch$1;->access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;

    move-result-object v1

    const-class v2, Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, mainIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    #getter for: Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;
    invoke-static {v1}, Lcom/olivephone/cu/XinHuaLaunch$1;->access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/XinHuaLaunch;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object v1, p0, Lcom/olivephone/cu/XinHuaLaunch$1$1;->this$1:Lcom/olivephone/cu/XinHuaLaunch$1;

    #getter for: Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;
    invoke-static {v1}, Lcom/olivephone/cu/XinHuaLaunch$1;->access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/olivephone/cu/XinHuaLaunch;->finish()V

    .line 152
    return-void
.end method
