.class Lcom/olivephone/cu/RSSNewsActivity$2;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const-string v5, ""

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_23

    .line 144
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->et_searchnews:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, keyword:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 146
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    .end local v2           #keyword:Ljava/lang/String;
    :cond_23
    :goto_23
    const/4 v3, 0x0

    return v3

    .line 148
    .restart local v2       #keyword:Ljava/lang/String;
    :cond_25
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 150
    const-class v4, Lcom/olivephone/cu/SearchedNewsActivity;

    .line 149
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "keyword"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-virtual {v3, v1}, Lcom/olivephone/cu/RSSNewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->et_searchnews:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$2;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/RSSNewsActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_23
.end method
