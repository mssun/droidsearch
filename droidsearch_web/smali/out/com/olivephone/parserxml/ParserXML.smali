.class public Lcom/olivephone/parserxml/ParserXML;
.super Ljava/lang/Object;
.source "ParserXML.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Ljava/io/File;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;
    .registers 5
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/olivephone/parserxml/DefaultHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 48
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 49
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 50
    invoke-virtual {p1}, Lcom/olivephone/parserxml/DefaultHandler;->getList()Ljava/util/List;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public static getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;
    .registers 6
    .parameter "url"
    .parameter "dh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/olivephone/parserxml/DefaultHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 33
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 35
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-static {p0}, Lcom/olivephone/parserxml/ParserXML;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 36
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_16

    .line 37
    invoke-virtual {v2, v0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 40
    :cond_16
    invoke-virtual {p1}, Lcom/olivephone/parserxml/DefaultHandler;->getList()Ljava/util/List;

    move-result-object v1

    .line 41
    return-object v1
.end method

.method public static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .parameter "strurl"

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 61
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 63
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v4, 0x4e20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    const/16 v4, 0x4e20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1d} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_2b

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_29

    .line 67
    const/4 v4, 0x0

    .line 75
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_23
    return-object v4

    .line 69
    :catch_24
    move-exception v4

    move-object v1, v4

    .line 70
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_29
    :goto_29
    move-object v4, v2

    .line 75
    goto :goto_23

    .line 71
    :catch_2b
    move-exception v4

    move-object v1, v4

    .line 72
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "is"

    .prologue
    .line 79
    const-string v3, ""

    .line 82
    .local v3, str:Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v4, ""

    .line 85
    .local v4, strs:Ljava/lang/String;
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #strs:Ljava/lang/String;
    :goto_1d
    return-object v3

    .line 86
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #strs:Ljava/lang/String;
    :cond_1e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_13

    .line 91
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #strs:Ljava/lang/String;
    :catch_22
    move-exception v5

    move-object v2, v5

    .line 92
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
