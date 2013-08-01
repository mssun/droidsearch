.class public Lcom/xxx/yyy/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# static fields
.field private static savefilepath:Ljava/lang/String;


# instance fields
.field private ct:Landroid/content/Context;

.field private netway:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "/sdcard/uc/"

    sput-object v0, Lcom/xxx/yyy/UpdateHelper;->savefilepath:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "ctx"
    .parameter "way"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/xxx/yyy/UpdateHelper;->netway:I

    .line 31
    iput-object p1, p0, Lcom/xxx/yyy/UpdateHelper;->ct:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/xxx/yyy/UpdateHelper;->savefilepath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xxx/yyy/UpdateHelper;->newFolder(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private GetO(Ljava/lang/String;)Z
    .registers 21
    .parameter "url"

    .prologue
    .line 59
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 60
    .local v9, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/UpdateHelper;->netway:I

    move/from16 v16, v0

    if-nez v16, :cond_2d

    .line 62
    new-instance v13, Lorg/apache/http/HttpHost;

    const-string v16, "10.0.0.172"

    const/16 v17, 0x50

    const-string v18, "http"

    move-object v0, v13

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    .local v13, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    const-string v17, "http.route.default-proxy"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 66
    .end local v13           #proxy:Lorg/apache/http/HttpHost;
    :cond_2d
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 68
    .local v11, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v16, "Accept"

    const-string v17, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v16, "Accept-Language"

    const-string v17, "zh-CN, en-US"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v16, "Accept-Charset"

    const-string v17, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_59
    invoke-virtual {v9, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 79
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 80
    .local v15, status:I
    const/16 v16, 0xc8

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_6f

    .line 81
    const/16 v16, 0x0

    .line 108
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :goto_6e
    return v16

    .line 82
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_6f
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 83
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 84
    .local v10, in:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/xxx/yyy/UpdateHelper;->savefilepath:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "myupdate.apk"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v8, fileOut:Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v12, out:Ljava/io/FileOutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v4, v0

    .line 94
    .local v4, bytes:[B
    :goto_a0
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, c:I
    const/16 v16, -0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_bb

    .line 97
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 99
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 100
    const/16 v16, 0x1

    goto :goto_6e

    .line 95
    :cond_bb
    const/16 v16, 0x0

    move-object v0, v12

    move-object v1, v4

    move/from16 v2, v16

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_59 .. :try_end_c5} :catch_c6
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_c5} :catch_cf

    goto :goto_a0

    .line 101
    .end local v4           #bytes:[B
    .end local v5           #c:I
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #fileOut:Ljava/io/File;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v12           #out:Ljava/io/FileOutputStream;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_c6
    move-exception v16

    move-object/from16 v6, v16

    .line 103
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 104
    const/16 v16, 0x0

    goto :goto_6e

    .line 105
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_cf
    move-exception v16

    move-object/from16 v6, v16

    .line 107
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    const/16 v16, 0x0

    goto :goto_6e
.end method

.method private newFolder(Ljava/lang/String;)V
    .registers 7
    .parameter "folderPath"

    .prologue
    .line 46
    move-object v1, p1

    .line 47
    .local v1, filePath:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, myFilePath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 57
    .end local v2           #myFilePath:Ljava/io/File;
    :cond_13
    :goto_13
    return-void

    .line 53
    :catch_14
    move-exception v3

    move-object v0, v3

    .line 54
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u65b0\u5efa\u76ee\u5f55\u64cd\u4f5c\u51fa\u9519"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public Doit(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/xxx/yyy/UpdateHelper;->GetO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 39
    iget-object v1, p0, Lcom/xxx/yyy/UpdateHelper;->ct:Landroid/content/Context;

    const-string v2, "update_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, update:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isnew"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    .end local v0           #update:Landroid/content/SharedPreferences;
    :cond_1d
    return-void
.end method
