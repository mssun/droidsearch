.class public Lcom/olivephone/util/ImageLoad;
.super Ljava/lang/Object;
.source "ImageLoad.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "url"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 47
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 50
    .local v4, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_7
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_50
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_c} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_43

    .line 52
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v5, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_c
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 54
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 55
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_20

    .line 56
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "src"

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_59
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_1f} :catch_64
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_5c

    move-result-object v0

    .line 69
    :cond_20
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v4, v5

    .line 71
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_28
    return-object v0

    .line 58
    :catch_29
    move-exception v7

    move-object v1, v7

    .line 60
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_50

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_28

    .line 61
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_36
    move-exception v7

    move-object v1, v7

    .line 63
    .local v1, e:Ljava/io/IOException;
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_50

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_28

    .line 64
    .end local v1           #e:Ljava/io/IOException;
    :catch_43
    move-exception v7

    move-object v1, v7

    .line 66
    .local v1, e:Ljava/lang/Exception;
    :goto_45
    :try_start_45
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_50

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_28

    .line 68
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_50
    move-exception v7

    .line 69
    :goto_51
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 70
    throw v7

    .line 68
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_59
    move-exception v7

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_51

    .line 64
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_5c
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_45

    .line 61
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_60
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_38

    .line 58
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_64
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2b
.end method
