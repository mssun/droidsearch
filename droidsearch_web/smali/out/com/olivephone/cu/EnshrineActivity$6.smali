.class Lcom/olivephone/cu/EnshrineActivity$6;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "arg1"
    .parameter "id"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const-string v6, "uri"

    .line 148
    iget-object v4, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    iget-object v3, v3, Lcom/olivephone/cu/EnshrineActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    iput-object v3, v4, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    .line 149
    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    iget-object v3, v3, Lcom/olivephone/cu/EnshrineActivity;->cur:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, uri:Ljava/lang/String;
    const-string v3, "uri"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 153
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    const-class v4, Lcom/olivephone/cu/EnshrineImageDetail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "img_url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-virtual {v3, v1, v5}, Lcom/olivephone/cu/EnshrineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    :goto_3a
    return-void

    .line 156
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3b
    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 157
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    const-class v4, Lcom/olivephone/cu/EnshrineVideoDetail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "videourl"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-virtual {v3, v1, v5}, Lcom/olivephone/cu/EnshrineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3a

    .line 163
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5f
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    const-class v4, Lcom/olivephone/cu/EnshrineDetailActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "uri"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v3, p0, Lcom/olivephone/cu/EnshrineActivity$6;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-virtual {v3, v1, v5}, Lcom/olivephone/cu/EnshrineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3a
.end method
