.class Lcom/olivephone/cu/SettingActivity$23;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->popMore()V
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
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/SettingActivity$23;)Lcom/olivephone/cu/SettingActivity;
    .registers 2
    .parameter

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$23;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1447
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u9000\u51fa\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    .line 1448
    new-instance v2, Lcom/olivephone/cu/SettingActivity$23$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/SettingActivity$23$1;-><init>(Lcom/olivephone/cu/SettingActivity$23;)V

    .line 1447
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1464
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1465
    const/4 v0, 0x0

    return v0
.end method
