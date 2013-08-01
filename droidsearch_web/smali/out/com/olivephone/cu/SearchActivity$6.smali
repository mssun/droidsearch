.class Lcom/olivephone/cu/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SearchActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    .line 123
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

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4d

    .line 127
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SearchActivity;->et_searchnews:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 128
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, keyword:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    .line 134
    const-class v4, Lcom/olivephone/cu/SearchedNewsActivity;

    .line 133
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "keyword"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    invoke-virtual {v3, v1}, Lcom/olivephone/cu/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    sget-object v3, Lcom/olivephone/util/PicNewsTemp;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SearchActivity;->et_searchnews:Landroid/widget/AutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/olivephone/cu/SearchActivity$6;->this$0:Lcom/olivephone/cu/SearchActivity;

    invoke-virtual {v3}, Lcom/olivephone/cu/SearchActivity;->finish()V

    .line 145
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #keyword:Ljava/lang/String;
    :cond_4d
    const/4 v3, 0x0

    return v3
.end method
