.class public Lcom/olivephone/parserxml/RssNewsHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "RssNewsHandler.java"


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field rssNews:Lcom/olivephone/model/RssNews;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "outline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25
    iget-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssNewsHandler;->rssNews:Lcom/olivephone/model/RssNews;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_12
    return-void
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 32
    const-string v0, "body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->list:Ljava/util/List;

    .line 40
    :cond_12
    :goto_12
    return-void

    .line 34
    :cond_13
    const-string v0, "outline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 35
    new-instance v0, Lcom/olivephone/model/RssNews;

    invoke-direct {v0}, Lcom/olivephone/model/RssNews;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->rssNews:Lcom/olivephone/model/RssNews;

    .line 36
    iget-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->rssNews:Lcom/olivephone/model/RssNews;

    const-string v1, "htmlurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssNews;->setHtmlurl(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->rssNews:Lcom/olivephone/model/RssNews;

    const-string v1, "title"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssNews;->setTitle(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/olivephone/parserxml/RssNewsHandler;->rssNews:Lcom/olivephone/model/RssNews;

    const-string v1, "xmlUrl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssNews;->setXmlUrl(Ljava/lang/String;)V

    goto :goto_12
.end method
