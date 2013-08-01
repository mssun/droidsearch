.class Lcom/olivephone/cu/TextNewsActivity$20;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->updateChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field j:I

.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    iget v0, p1, Lcom/olivephone/cu/TextNewsActivity;->i:I

    iput v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->j:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1213
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 1214
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1216
    :cond_e
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->hiddenNewsContent()V
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$6(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 1217
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->showNewList()V
    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$5(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 1221
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->rss_content:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/TextNewsActivity$20;->j:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/TextNewsActivity;->page:I

    .line 1225
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->checked_rss:[Ljava/lang/String;

    iget v2, p0, Lcom/olivephone/cu/TextNewsActivity$20;->j:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/olivephone/cu/TextNewsActivity;->cateID:Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/TextNewsActivity;->updateNewList()V

    .line 1228
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    if-eqz v0, :cond_57

    .line 1229
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/TextNewsActivity;->isLast:Z

    .line 1230
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$20;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    .line 1233
    :cond_57
    return v3
.end method
