.class Lcom/olivephone/cu/SettingActivity$21;
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
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$21;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$21;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SettingActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1426
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$21;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 1427
    const-class v2, Lcom/olivephone/cu/EnshrineActivity;

    .line 1426
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1428
    .local v0, intent3:Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/SettingActivity$21;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1429
    const/4 v1, 0x0

    return v1
.end method
