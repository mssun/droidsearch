.class public Lcom/olivephone/parserxml/CateListHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "CateListHandler.java"


# instance fields
.field attr:Ljava/lang/StringBuffer;

.field cateList:Lcom/olivephone/model/CateList;

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
    .line 11
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
    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_c

    .line 27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    add-int v1, p2, p3

    if-lt v0, v1, :cond_d

    .line 32
    .end local v0           #i:I
    :cond_c
    return-void

    .line 28
    .restart local v0       #i:I
    :cond_d
    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

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
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "cate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 39
    iget-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->cateList:Lcom/olivephone/model/CateList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_12
    :goto_12
    return-void

    .line 40
    :cond_13
    const-string v0, "cateId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 41
    iget-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->cateList:Lcom/olivephone/model/CateList;

    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/CateList;->setCateId(Ljava/lang/String;)V

    goto :goto_12

    .line 42
    :cond_27
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 43
    iget-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->cateList:Lcom/olivephone/model/CateList;

    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/CateList;->setName(Ljava/lang/String;)V

    goto :goto_12

    .line 44
    :cond_3b
    const-string v0, "picUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    iget-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->cateList:Lcom/olivephone/model/CateList;

    iget-object v1, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/CateList;->setPicUrl(Ljava/lang/String;)V

    goto :goto_12
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
    .line 19
    iget-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->list:Ljava/util/List;

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
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 53
    const-string v0, "cateList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->list:Ljava/util/List;

    .line 64
    :cond_12
    :goto_12
    return-void

    .line 55
    :cond_13
    const-string v0, "cate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 56
    new-instance v0, Lcom/olivephone/model/CateList;

    invoke-direct {v0}, Lcom/olivephone/model/CateList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->cateList:Lcom/olivephone/model/CateList;

    goto :goto_12

    .line 58
    :cond_23
    const-string v0, "cateId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 59
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 60
    const-string v0, "picUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 62
    :cond_3b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/CateListHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_12
.end method
