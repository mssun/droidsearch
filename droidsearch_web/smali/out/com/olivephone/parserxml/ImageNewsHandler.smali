.class public Lcom/olivephone/parserxml/ImageNewsHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "ImageNewsHandler.java"


# instance fields
.field attr:Ljava/lang/StringBuffer;

.field image:Lcom/olivephone/model/Image;

.field imageNews:Lcom/olivephone/model/ImageNews;

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


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

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
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 26
    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_c

    .line 27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    add-int v1, p2, p3

    if-lt v0, v1, :cond_d

    .line 31
    .end local v0           #i:I
    :cond_c
    return-void

    .line 28
    .restart local v0       #i:I
    :cond_d
    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
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
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 37
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_12
    :goto_12
    return-void

    .line 38
    :cond_13
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 39
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setType(Ljava/lang/String;)V

    goto :goto_12

    .line 40
    :cond_27
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 41
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setNewsUuid(Ljava/lang/String;)V

    goto :goto_12

    .line 42
    :cond_3b
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 43
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setBigTitle(Ljava/lang/String;)V

    goto :goto_12

    .line 44
    :cond_4f
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 45
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setPubTime(Ljava/lang/String;)V

    goto :goto_12

    .line 46
    :cond_63
    const-string v0, "author "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 47
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setAuthor(Ljava/lang/String;)V

    goto :goto_12

    .line 48
    :cond_77
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 49
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setOrigin(Ljava/lang/String;)V

    goto :goto_12

    .line 50
    :cond_8b
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 51
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setImg(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 52
    :cond_a0
    const-string v0, "surl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 53
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setSurl(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 54
    :cond_b5
    const-string v0, "burl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 55
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setBurl(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 56
    :cond_ca
    const-string v0, "picDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 57
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setPicDesc(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 58
    :cond_df
    const-string v0, "pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 59
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    invoke-virtual {v0}, Lcom/olivephone/model/ImageNews;->getImageList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->image:Lcom/olivephone/model/Image;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12
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
    .line 20
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->list:Ljava/util/List;

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
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "newsList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->list:Ljava/util/List;

    .line 88
    :cond_12
    :goto_12
    return-void

    .line 68
    :cond_13
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 69
    new-instance v0, Lcom/olivephone/model/ImageNews;

    invoke-direct {v0}, Lcom/olivephone/model/ImageNews;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    goto :goto_12

    .line 71
    :cond_23
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 72
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 73
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 74
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 75
    const-string v0, "author "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 76
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 77
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 78
    const-string v0, "burl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 79
    const-string v0, "surl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 80
    const-string v0, "picDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 82
    :cond_73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_12

    .line 83
    :cond_7b
    const-string v0, "pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 84
    iget-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->imageNews:Lcom/olivephone/model/ImageNews;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/olivephone/model/ImageNews;->setImageList(Ljava/util/List;)V

    goto :goto_12

    .line 85
    :cond_8e
    const-string v0, "pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 86
    new-instance v0, Lcom/olivephone/model/Image;

    invoke-direct {v0}, Lcom/olivephone/model/Image;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/ImageNewsHandler;->image:Lcom/olivephone/model/Image;

    goto/16 :goto_12
.end method
