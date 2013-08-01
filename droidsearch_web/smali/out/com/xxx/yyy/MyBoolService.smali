.class public Lcom/xxx/yyy/MyBoolService;
.super Landroid/content/BroadcastReceiver;
.source "MyBoolService.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


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
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 17
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 19
    .local v1, alarms:Landroid/app/AlarmManager;
    const-string v0, "com.lz.myservicestart"

    .line 20
    .local v0, ALARM_ACTION:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v2, intentToFire:Landroid/content/Intent;
    invoke-static {p1, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 22
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x2

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 27
    .end local v0           #ALARM_ACTION:Ljava/lang/String;
    .end local v1           #alarms:Landroid/app/AlarmManager;
    .end local v2           #intentToFire:Landroid/content/Intent;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_27
    return-void
.end method
