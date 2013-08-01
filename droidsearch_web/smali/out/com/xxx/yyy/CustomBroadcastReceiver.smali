.class public Lcom/xxx/yyy/CustomBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CustomBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/xxx/yyy/CustomBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 17
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 18
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    new-instance v0, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;-><init>(Lcom/xxx/yyy/CustomBroadcastReceiver;)V

    .line 19
    .local v0, customPhoneListener:Lcom/xxx/yyy/CustomBroadcastReceiver$CustomPhoneStateListener;
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 20
    return-void
.end method
