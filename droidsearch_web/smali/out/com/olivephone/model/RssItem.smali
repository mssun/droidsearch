.class public Lcom/olivephone/model/RssItem;
.super Ljava/lang/Object;
.source "RssItem.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bigTitle:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private pubDate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->pubDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/olivephone/model/RssItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2
    .parameter "author"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->author:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->bigTitle:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->description:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2
    .parameter "link"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->link:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPubDate(Ljava/lang/String;)V
    .registers 2
    .parameter "pubDate"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->pubDate:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/olivephone/model/RssItem;->title:Ljava/lang/String;

    .line 22
    return-void
.end method
