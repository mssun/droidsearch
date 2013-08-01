.class Lcom/olivephone/cu/XinHuaLaunch$1;
.super Ljava/lang/Object;
.source "XinHuaLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XinHuaLaunch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/XinHuaLaunch;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XinHuaLaunch;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/XinHuaLaunch$1;)Lcom/olivephone/cu/XinHuaLaunch;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-class v6, Lcom/olivephone/cu/TextNewsActivity;

    const-string v5, "0"

    .line 98
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v3, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    const-string v4, "1.2"

    invoke-static {v3, v4}, Lcom/olivephone/constant/URLConstant;->update(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/olivephone/parserxml/ParserXML;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/olivephone/parserxml/ParserXML;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    const-string v3, "USERINFO"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/olivephone/cu/XinHuaLaunch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    const-string v3, "update"

    const-string v4, "\u624b\u52a8"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/olivephone/cu/XinHuaLaunch;->updatetype:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v2, v2, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v2, v2, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v2, v2, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 128
    :cond_4b
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    const-class v3, Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, mainIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    invoke-virtual {v2, v0}, Lcom/olivephone/cu/XinHuaLaunch;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    invoke-virtual {v2}, Lcom/olivephone/cu/XinHuaLaunch;->finish()V

    .line 168
    .end local v0           #mainIntent:Landroid/content/Intent;
    :goto_5e
    return-void

    .line 133
    :cond_5f
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v2, v2, Lcom/olivephone/cu/XinHuaLaunch;->updatetype:Ljava/lang/String;

    const-string v3, "auto_update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 134
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v3, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    iget-object v3, v3, Lcom/olivephone/cu/XinHuaLaunch;->versionUrl:Ljava/lang/String;

    const-string v4, "0"

    invoke-static {v2, v3, v5}, Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    const-class v3, Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v0       #mainIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    invoke-virtual {v2, v0}, Lcom/olivephone/cu/XinHuaLaunch;->startActivity(Landroid/content/Intent;)V

    .line 138
    iget-object v2, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    invoke-virtual {v2}, Lcom/olivephone/cu/XinHuaLaunch;->finish()V

    goto :goto_5e

    .line 140
    .end local v0           #mainIntent:Landroid/content/Intent;
    :cond_8a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/olivephone/cu/XinHuaLaunch$1;->this$0:Lcom/olivephone/cu/XinHuaLaunch;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v3, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 142
    const-string v3, "\u6709\u65b0\u7248\u672c,\u662f\u5426\u4e0b\u8f7d?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 143
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/olivephone/cu/XinHuaLaunch$1$1;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/XinHuaLaunch$1$1;-><init>(Lcom/olivephone/cu/XinHuaLaunch$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 154
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/olivephone/cu/XinHuaLaunch$1$2;

    invoke-direct {v4, p0}, Lcom/olivephone/cu/XinHuaLaunch$1$2;-><init>(Lcom/olivephone/cu/XinHuaLaunch$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5e
.end method
