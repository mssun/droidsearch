.class Lcom/olivephone/cu/RSSNewsActivity$4;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$4;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$4;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const-class v2, Lcom/olivephone/cu/DownLoadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$4;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/olivephone/cu/RSSNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method
