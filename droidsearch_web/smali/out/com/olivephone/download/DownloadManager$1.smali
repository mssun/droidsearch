.class Lcom/olivephone/download/DownloadManager$1;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/download/DownloadManager;->downLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 43
    :try_start_0
    new-instance v8, Lcom/olivephone/model/DownLoadFile;

    invoke-direct {v8}, Lcom/olivephone/model/DownLoadFile;-><init>()V

    .line 44
    .local v8, dlf:Lcom/olivephone/model/DownLoadFile;
    sget-object v24, Lcom/olivephone/download/DownloadManager;->range:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setTempSize(Ljava/lang/String;)V

    .line 46
    new-instance v23, Ljava/net/URL;

    sget-object v24, Lcom/olivephone/download/DownloadManager;->url:Ljava/lang/String;

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    .local v23, u:Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 49
    .local v6, conn:Ljava/net/HttpURLConnection;
    const/16 v24, 0x4e20

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    const-string v24, "User-Agent"

    const-string v25, "NetFox"

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v24, "TempSize"

    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_97

    .line 54
    const-string v24, "RANGE"

    const-string v25, "bytes=0-"

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_4d
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 60
    .local v20, rescode:I
    const-string v24, "rescode"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v12, 0x1

    .line 64
    .local v12, i:I
    const/4 v11, 0x0

    .line 66
    .local v11, fileLength:I
    :goto_65
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v21

    .line 67
    .local v21, sHeader:Ljava/lang/String;
    if-eqz v21, :cond_c2

    .line 68
    const-string v24, "content-length"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_94

    .line 70
    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 71
    const-string v24, "fileLength"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_94
    add-int/lit8 v12, v12, 0x1

    .line 65
    goto :goto_65

    .line 56
    .end local v11           #fileLength:I
    .end local v12           #i:I
    .end local v20           #rescode:I
    .end local v21           #sHeader:Ljava/lang/String;
    :cond_97
    const-string v24, "RANGE"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "bytes="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_ba} :catch_bb
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_ba} :catch_239

    goto :goto_4d

    .line 152
    .end local v6           #conn:Ljava/net/HttpURLConnection;
    .end local v8           #dlf:Lcom/olivephone/model/DownLoadFile;
    .end local v23           #u:Ljava/net/URL;
    :catch_bb
    move-exception v24

    move-object/from16 v9, v24

    .line 153
    .local v9, e:Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 158
    .end local v9           #e:Ljava/net/MalformedURLException;
    :cond_c1
    :goto_c1
    return-void

    .line 78
    .restart local v6       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #dlf:Lcom/olivephone/model/DownLoadFile;
    .restart local v11       #fileLength:I
    .restart local v12       #i:I
    .restart local v20       #rescode:I
    .restart local v21       #sHeader:Ljava/lang/String;
    .restart local v23       #u:Ljava/net/URL;
    :cond_c2
    :try_start_c2
    const-string v24, "fileName"

    sget-object v25, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v24, Lcom/olivephone/download/DownloadManager;->url:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setUrl(Ljava/lang/String;)V

    .line 82
    sget-object v24, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setName(Ljava/lang/String;)V

    .line 83
    sget-object v24, Lcom/olivephone/download/DownloadManager;->range:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    add-int v24, v24, v11

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setSize(I)V

    .line 84
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setThread(Ljava/lang/Thread;)V

    .line 85
    const/16 v24, 0x1

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setAlive(Z)V

    .line 86
    sget-object v24, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/16 v24, 0x1

    sput-boolean v24, Lcom/olivephone/constant/BooleanConstant;->IS_OVER:Z

    .line 90
    new-instance v10, Ljava/io/File;

    sget-object v24, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_114

    .line 92
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_114
    new-instance v19, Ljava/io/RandomAccessFile;

    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/olivephone/constant/StringConstant;->EXTERN_PATH:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v19, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 102
    .local v13, is:Ljava/io/InputStream;
    const/16 v24, 0x200

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v5, v0

    .line 104
    .local v5, b:[B
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->getTempSize()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 105
    .local v22, tempSize:I
    :cond_163
    const/16 v24, 0x0

    const/16 v25, 0x200

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .local v16, nRead:I
    if-gtz v16, :cond_241

    .line 119
    :cond_173
    :goto_173
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 120
    .local v14, length:Ljava/lang/Long;
    const-string v24, "tempFileLength"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->isAlive()Z

    move-result v24

    if-eqz v24, :cond_c1

    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->isPause()Z

    move-result v24

    if-nez v24, :cond_c1

    .line 132
    sget-object v24, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    sget-object v25, Lcom/olivephone/constant/StringConstant;->list:Ljava/util/List;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    sub-int v25, v25, v26

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    sget-object v24, Lcom/olivephone/download/DownloadManager;->c:Landroid/content/Context;

    const-string v25, "notification"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 137
    .local v17, nm:Landroid/app/NotificationManager;
    new-instance v15, Landroid/app/Notification;

    invoke-direct {v15}, Landroid/app/Notification;-><init>()V

    .line 138
    .local v15, n:Landroid/app/Notification;
    const v24, 0x7f020010

    move/from16 v0, v24

    move-object v1, v15

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 139
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v15

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object v2, v15

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 142
    new-instance v18, Landroid/content/Intent;

    sget-object v24, Lcom/olivephone/download/DownloadManager;->c:Landroid/content/Context;

    const-class v25, Lcom/olivephone/cu/DownLoadActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v18, notificationIntent:Landroid/content/Intent;
    sget-object v24, Lcom/olivephone/download/DownloadManager;->c:Landroid/content/Context;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 146
    .local v7, contentIntent:Landroid/app/PendingIntent;
    sget-object v24, Lcom/olivephone/download/DownloadManager;->c:Landroid/content/Context;

    const-string v25, "\u4e0b\u8f7d\u63d0\u793a"

    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Lcom/olivephone/constant/StringConstant;->imageFileName:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 148
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_237
    .catch Ljava/net/MalformedURLException; {:try_start_c2 .. :try_end_237} :catch_bb
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_237} :catch_239

    goto/16 :goto_c1

    .line 154
    .end local v5           #b:[B
    .end local v6           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #dlf:Lcom/olivephone/model/DownLoadFile;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #fileLength:I
    .end local v12           #i:I
    .end local v13           #is:Ljava/io/InputStream;
    .end local v14           #length:Ljava/lang/Long;
    .end local v15           #n:Landroid/app/Notification;
    .end local v16           #nRead:I
    .end local v17           #nm:Landroid/app/NotificationManager;
    .end local v18           #notificationIntent:Landroid/content/Intent;
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .end local v20           #rescode:I
    .end local v21           #sHeader:Ljava/lang/String;
    .end local v22           #tempSize:I
    .end local v23           #u:Ljava/net/URL;
    :catch_239
    move-exception v24

    move-object/from16 v9, v24

    .line 155
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c1

    .line 106
    .end local v9           #e:Ljava/io/IOException;
    .restart local v5       #b:[B
    .restart local v6       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #dlf:Lcom/olivephone/model/DownLoadFile;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #fileLength:I
    .restart local v12       #i:I
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v16       #nRead:I
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    .restart local v20       #rescode:I
    .restart local v21       #sHeader:Ljava/lang/String;
    .restart local v22       #tempSize:I
    .restart local v23       #u:Ljava/net/URL;
    :cond_241
    const/16 v24, 0x0

    :try_start_243
    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 107
    add-int v22, v22, v16

    .line 108
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setTempSize(Ljava/lang/String;)V

    .line 109
    const-string v24, "tempSize"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->isAlive()Z

    move-result v24

    if-eqz v24, :cond_173

    .line 113
    invoke-virtual {v8}, Lcom/olivephone/model/DownLoadFile;->isPause()Z

    move-result v24

    if-eqz v24, :cond_163

    .line 114
    const/16 v24, 0x0

    sput-boolean v24, Lcom/olivephone/constant/BooleanConstant;->IS_OVER:Z

    .line 115
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/olivephone/model/DownLoadFile;->setTempSize(Ljava/lang/String;)V
    :try_end_297
    .catch Ljava/net/MalformedURLException; {:try_start_243 .. :try_end_297} :catch_bb
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_297} :catch_239

    goto/16 :goto_173
.end method
