.class public Lcom/olivephone/parserxml/RssItemHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "RssItemHandler.java"


# instance fields
.field buffer:Ljava/lang/StringBuffer;

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

.field rssItem:Lcom/olivephone/model/RssItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 48
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 51
    :cond_c
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    if-eqz v0, :cond_1e

    .line 25
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssItem;->setTitle(Ljava/lang/String;)V

    .line 26
    iput-object v2, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    .line 42
    :cond_1d
    :goto_1d
    return-void

    .line 27
    :cond_1e
    const-string v0, "link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 28
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssItem;->setLink(Ljava/lang/String;)V

    .line 29
    iput-object v2, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 30
    :cond_34
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 31
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssItem;->setAuthor(Ljava/lang/String;)V

    .line 32
    iput-object v2, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 33
    :cond_4a
    const-string v0, "pubDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 34
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssItem;->setPubDate(Ljava/lang/String;)V

    .line 35
    iput-object v2, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 36
    :cond_60
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 37
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/RssItem;->setDescription(Ljava/lang/String;)V

    .line 38
    iput-object v2, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 39
    :cond_76
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 40
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d
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
    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
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
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 56
    const-string v0, "channel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->list:Ljava/util/List;

    .line 69
    :cond_12
    :goto_12
    return-void

    .line 58
    :cond_13
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 59
    new-instance v0, Lcom/olivephone/model/RssItem;

    invoke-direct {v0}, Lcom/olivephone/model/RssItem;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    goto :goto_12

    .line 60
    :cond_23
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->rssItem:Lcom/olivephone/model/RssItem;

    if-eqz v0, :cond_37

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_12

    .line 62
    :cond_37
    const-string v0, "link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 63
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 64
    const-string v0, "pubDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 65
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    :cond_57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/RssItemHandler;->buffer:Ljava/lang/StringBuffer;

    goto :goto_12
.end method
