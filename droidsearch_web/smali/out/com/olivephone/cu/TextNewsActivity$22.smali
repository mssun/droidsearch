.class Lcom/olivephone/cu/TextNewsActivity$22;
.super Landroid/os/Handler;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->updateNewList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1415
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity$22;)Lcom/olivephone/cu/TextNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    .line 1420
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 1422
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    new-instance v1, Lcom/olivephone/adapter/TextNewsAdapter;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v4}, Lcom/olivephone/adapter/TextNewsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v1, v0, Lcom/olivephone/cu/TextNewsActivity;->tna:Lcom/olivephone/adapter/TextNewsAdapter;

    .line 1425
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->tna:Lcom/olivephone/adapter/TextNewsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1427
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1446
    :goto_3e
    return-void

    .line 1429
    :cond_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$22;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1430
    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    .line 1429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1430
    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u91cd\u8bd5!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1431
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/olivephone/cu/TextNewsActivity$22$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/TextNewsActivity$22$1;-><init>(Lcom/olivephone/cu/TextNewsActivity$22;)V

    .line 1430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1442
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3e
.end method
