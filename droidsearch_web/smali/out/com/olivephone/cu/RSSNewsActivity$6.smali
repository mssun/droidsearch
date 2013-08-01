.class Lcom/olivephone/cu/RSSNewsActivity$6;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/RSSNewsActivity$6;)Lcom/olivephone/cu/RSSNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 236
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iput p3, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    .line 239
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    #calls: Lcom/olivephone/cu/RSSNewsActivity;->loadNews(I)V
    invoke-static {v0, v1}, Lcom/olivephone/cu/RSSNewsActivity;->access$1(Lcom/olivephone/cu/RSSNewsActivity;I)V

    .line 241
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->pd_load_news:Landroid/app/ProgressDialog;

    .line 242
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pd_load_news:Landroid/app/ProgressDialog;

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pd_load_news:Landroid/app/ProgressDialog;

    const-string v1, "\u6570\u636e\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->pd_load_news:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 245
    new-instance v0, Lcom/olivephone/cu/RSSNewsActivity$6$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/RSSNewsActivity$6$1;-><init>(Lcom/olivephone/cu/RSSNewsActivity$6;)V

    .line 256
    invoke-virtual {v0}, Lcom/olivephone/cu/RSSNewsActivity$6$1;->start()V

    .line 258
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$6;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    new-instance v1, Lcom/olivephone/cu/RSSNewsActivity$6$2;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/RSSNewsActivity$6$2;-><init>(Lcom/olivephone/cu/RSSNewsActivity$6;)V

    iput-object v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->handler1:Landroid/os/Handler;

    .line 265
    return-void
.end method
