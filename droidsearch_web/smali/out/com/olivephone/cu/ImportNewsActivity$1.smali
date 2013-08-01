.class Lcom/olivephone/cu/ImportNewsActivity$1;
.super Ljava/lang/Object;
.source "ImportNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImportNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImportNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImportNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/ImportNewsActivity;->list_temp:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/olivephone/model/SearchedNews;

    .line 51
    .local v4, searchedNews:Lcom/olivephone/model/SearchedNews;
    invoke-virtual {v4}, Lcom/olivephone/model/SearchedNews;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 52
    .local v5, type:I
    packed-switch v5, :pswitch_data_6c

    .line 77
    :goto_1a
    return-void

    .line 54
    :pswitch_1b
    new-instance v1, Landroid/content/Intent;

    .line 55
    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    .line 56
    const-class v7, Lcom/olivephone/cu/VideoActivity;

    .line 54
    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, intent0:Landroid/content/Intent;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    const-string v6, "videourl"

    .line 59
    invoke-virtual {v4}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    invoke-virtual {v6, v1}, Lcom/olivephone/cu/ImportNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a

    .line 64
    .end local v1           #intent0:Landroid/content/Intent;
    :pswitch_3f
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    const-class v7, Lcom/olivephone/cu/SearchedTextNewsActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v2, intent1:Landroid/content/Intent;
    const-string v6, "newsurl"

    invoke-virtual {v4}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    invoke-virtual {v6, v2}, Lcom/olivephone/cu/ImportNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a

    .line 70
    .end local v2           #intent1:Landroid/content/Intent;
    :pswitch_5a
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    const-class v7, Lcom/olivephone/cu/SearchedPicNewsActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v3, intent2:Landroid/content/Intent;
    sput-object v4, Lcom/olivephone/util/PicNewsTemp;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 72
    iget-object v6, p0, Lcom/olivephone/cu/ImportNewsActivity$1;->this$0:Lcom/olivephone/cu/ImportNewsActivity;

    invoke-virtual {v6, v3}, Lcom/olivephone/cu/ImportNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a

    .line 52
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_3f
        :pswitch_5a
    .end packed-switch
.end method
