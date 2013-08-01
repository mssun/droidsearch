.class Lcom/olivephone/cu/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 350
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

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_23

    .line 354
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->et_searchnews:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, keywords:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 356
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 370
    .end local v2           #keywords:Ljava/lang/String;
    :cond_23
    :goto_23
    const/4 v3, 0x0

    return v3

    .line 358
    .restart local v2       #keywords:Ljava/lang/String;
    :cond_25
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 360
    const-class v4, Lcom/olivephone/cu/SearchedNewsActivity;

    .line 359
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "keyword"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v3, v1}, Lcom/olivephone/cu/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->et_searchnews:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, p0, Lcom/olivephone/cu/SettingActivity$6;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v3, v3, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_23
.end method
