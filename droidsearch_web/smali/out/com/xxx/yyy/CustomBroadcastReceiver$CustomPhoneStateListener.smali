.class public Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CustomBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxx/yyy/CustomBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/CustomBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/xxx/yyy/CustomBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;->this$0:Lcom/xxx/yyy/CustomBroadcastReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 9
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x0

    const-string v5, "started"

    .line 27
    packed-switch p1, :pswitch_data_3a

    .line 49
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 32
    :pswitch_7
    iget-object v2, p0, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;->this$0:Lcom/xxx/yyy/CustomBroadcastReceiver;

    iget-object v2, v2, Lcom/xxx/yyy/CustomBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v3, "phone_start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, update:Landroid/content/SharedPreferences;
    const-string v2, "started"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, flag:I
    if-nez v0, :cond_6

    .line 35
    const/4 v0, 0x1

    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "started"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    iget-object v2, p0, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;->this$0:Lcom/xxx/yyy/CustomBroadcastReceiver;

    iget-object v2, v2, Lcom/xxx/yyy/CustomBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;->this$0:Lcom/xxx/yyy/CustomBroadcastReceiver;

    iget-object v4, v4, Lcom/xxx/yyy/CustomBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/xxx/yyy/MyService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    .line 27
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 55
    return-void
.end method
