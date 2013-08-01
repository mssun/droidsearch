.class public Lcom/olivephone/parserxml/SearchedNewsHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "SearchedNewsHandler.java"


# instance fields
.field attr:Ljava/lang/StringBuffer;

.field image:Lcom/olivephone/model/Image;

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

.field searchedNews:Lcom/olivephone/model/SearchedNews;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->list:Ljava/util/List;

    .line 15
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
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 30
    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_c

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    add-int v1, p2, p3

    if-lt v0, v1, :cond_d

    .line 35
    .end local v0           #i:I
    :cond_c
    return-void

    .line 32
    .restart local v0       #i:I
    :cond_d
    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
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
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 42
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_12
    :goto_12
    return-void

    .line 43
    :cond_13
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 44
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/SearchedNews;->setType(Ljava/lang/String;)V

    goto :goto_12

    .line 45
    :cond_27
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 46
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/SearchedNews;->setBigTitle(Ljava/lang/String;)V

    goto :goto_12

    .line 47
    :cond_3b
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 48
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/SearchedNews;->setPubTime(Ljava/lang/String;)V

    goto :goto_12

    .line 49
    :cond_4f
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 50
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/SearchedNews;->setNewsUrl(Ljava/lang/String;)V

    goto :goto_12

    .line 51
    :cond_63
    const-string v0, "pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 52
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    invoke-virtual {v0}, Lcom/olivephone/model/SearchedNews;->getImageList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->image:Lcom/olivephone/model/Image;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 53
    :cond_77
    const-string v0, "surl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 54
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setSurl(Ljava/lang/String;)V

    goto :goto_12

    .line 55
    :cond_8b
    const-string v0, "burl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 56
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setBurl(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 57
    :cond_a0
    const-string v0, "picDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->image:Lcom/olivephone/model/Image;

    iget-object v1, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/Image;->setPicDesc(Ljava/lang/String;)V

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
    .line 23
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->list:Ljava/util/List;

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

    iput-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->list:Ljava/util/List;

    .line 85
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
    new-instance v0, Lcom/olivephone/model/SearchedNews;

    invoke-direct {v0}, Lcom/olivephone/model/SearchedNews;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    goto :goto_12

    .line 71
    :cond_23
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 72
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 73
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 74
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 75
    const-string v0, "burl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 76
    const-string v0, "surl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 77
    const-string v0, "picDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 79
    :cond_5b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_12

    .line 80
    :cond_63
    const-string v0, "pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 81
    iget-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->searchedNews:Lcom/olivephone/model/SearchedNews;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/olivephone/model/SearchedNews;->setImageList(Ljava/util/List;)V

    goto :goto_12

    .line 82
    :cond_76
    const-string v0, "pic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 83
    new-instance v0, Lcom/olivephone/model/Image;

    invoke-direct {v0}, Lcom/olivephone/model/Image;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/SearchedNewsHandler;->image:Lcom/olivephone/model/Image;

    goto :goto_12
.end method
