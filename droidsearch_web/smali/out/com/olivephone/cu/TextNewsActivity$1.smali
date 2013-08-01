.class Lcom/olivephone/cu/TextNewsActivity$1;
.super Landroid/os/Handler;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olivephone/cu/TextNewsActivity;
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$1;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 717
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 720
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 721
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_14

    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_27

    .line 725
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$1;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->tna:Lcom/olivephone/adapter/TextNewsAdapter;

    invoke-virtual {v2}, Lcom/olivephone/adapter/TextNewsAdapter;->notifyDataSetChanged()V

    .line 727
    .end local v0           #i:I
    :cond_14
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$1;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$1;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/olivephone/cu/TextNewsActivity;->isRefresh:Z

    .line 729
    return-void

    .line 723
    .restart local v0       #i:I
    :cond_27
    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$1;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
