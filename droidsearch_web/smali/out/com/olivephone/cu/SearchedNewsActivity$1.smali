.class Lcom/olivephone/cu/SearchedNewsActivity$1;
.super Ljava/lang/Object;
.source "SearchedNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchedNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/SearchedNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchedNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .line 83
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/SearchedNewsActivity;->list_searchednews:Ljava/util/List;

    .line 85
    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/olivephone/model/SearchedNews;

    .line 84
    iput-object v5, v6, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 86
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v5}, Lcom/olivephone/model/SearchedNews;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    .local v4, type:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v6}, Lcom/olivephone/model/SearchedNews;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    packed-switch v4, :pswitch_data_90

    .line 113
    :goto_2f
    return-void

    .line 90
    :pswitch_30
    new-instance v1, Landroid/content/Intent;

    .line 91
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    .line 92
    const-class v6, Lcom/olivephone/cu/VideoActivity;

    .line 90
    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, intent0:Landroid/content/Intent;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v6}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string v5, "videourl"

    iget-object v6, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 95
    invoke-virtual {v6}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    invoke-virtual {v5, v1}, Lcom/olivephone/cu/SearchedNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2f

    .line 100
    .end local v1           #intent0:Landroid/content/Intent;
    :pswitch_5c
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    const-class v6, Lcom/olivephone/cu/SearchedTextNewsActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, intent1:Landroid/content/Intent;
    const-string v5, "newsurl"

    iget-object v6, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v6, v6, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v6}, Lcom/olivephone/model/SearchedNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    invoke-virtual {v5, v2}, Lcom/olivephone/cu/SearchedNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2f

    .line 106
    .end local v2           #intent1:Landroid/content/Intent;
    :pswitch_7b
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    const-class v6, Lcom/olivephone/cu/SearchedPicNewsActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v3, intent2:Landroid/content/Intent;
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/SearchedNewsActivity;->searchedNews:Lcom/olivephone/model/SearchedNews;

    sput-object v5, Lcom/olivephone/util/PicNewsTemp;->searchedNews:Lcom/olivephone/model/SearchedNews;

    .line 108
    iget-object v5, p0, Lcom/olivephone/cu/SearchedNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedNewsActivity;

    invoke-virtual {v5, v3}, Lcom/olivephone/cu/SearchedNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2f

    .line 88
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_30
        :pswitch_5c
        :pswitch_7b
    .end packed-switch
.end method
