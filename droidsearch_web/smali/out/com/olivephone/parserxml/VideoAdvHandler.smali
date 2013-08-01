.class public Lcom/olivephone/parserxml/VideoAdvHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "VideoAdvHandler.java"


# instance fields
.field attr:Ljava/lang/StringBuffer;

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

.field videoAdv:Lcom/olivephone/model/VideoAdv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->list:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 24
    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_c

    .line 25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    add-int v1, p2, p3

    if-lt v0, v1, :cond_d

    .line 29
    .end local v0           #i:I
    :cond_c
    return-void

    .line 26
    .restart local v0       #i:I
    :cond_d
    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

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
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 35
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setName(Ljava/lang/String;)V

    .line 61
    :cond_16
    :goto_16
    return-void

    .line 36
    :cond_17
    const-string v0, "faceImg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 37
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setFaceImg(Ljava/lang/String;)V

    goto :goto_16

    .line 38
    :cond_2b
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 39
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setType(Ljava/lang/String;)V

    goto :goto_16

    .line 40
    :cond_3f
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 41
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setNewsUuid(Ljava/lang/String;)V

    goto :goto_16

    .line 42
    :cond_53
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 43
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setBigTitle(Ljava/lang/String;)V

    goto :goto_16

    .line 44
    :cond_67
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 45
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setPubTime(Ljava/lang/String;)V

    goto :goto_16

    .line 46
    :cond_7b
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 47
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setAuthor(Ljava/lang/String;)V

    goto :goto_16

    .line 48
    :cond_8f
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 49
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setOrigin(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 50
    :cond_a4
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 51
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setImg(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 52
    :cond_b9
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 53
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setNewsDesc(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 54
    :cond_ce
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 55
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setNewsUrl(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 56
    :cond_e3
    const-string v0, "playTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 57
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoAdv;->setPlayTime(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 58
    :cond_f8
    const-string v0, "advertise"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 59
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16
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
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->list:Ljava/util/List;

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
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "advertise"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    new-instance v0, Lcom/olivephone/model/VideoAdv;

    invoke-direct {v0}, Lcom/olivephone/model/VideoAdv;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->videoAdv:Lcom/olivephone/model/VideoAdv;

    .line 83
    :cond_12
    :goto_12
    return-void

    .line 68
    :cond_13
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 69
    const-string v0, "faceImg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 70
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 71
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 72
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 73
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 74
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 75
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 76
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 77
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 78
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 79
    const-string v0, "playTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 81
    :cond_73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoAdvHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_12
.end method
