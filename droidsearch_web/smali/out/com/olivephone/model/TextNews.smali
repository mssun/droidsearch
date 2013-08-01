.class public Lcom/olivephone/model/TextNews;
.super Ljava/lang/Object;
.source "TextNews.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bigTitle:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private img:Ljava/lang/String;

.field private media:Ljava/lang/String;

.field private newsContent:Ljava/lang/String;

.field private newsDesc:Ljava/lang/String;

.field private newsUrl:Ljava/lang/String;

.field private newsUuid:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private pubTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->media:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->newsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->newsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->newsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->newsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/olivephone/model/TextNews;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2
    .parameter "author"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->author:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "bigTitle"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->bigTitle:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->drawable:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .registers 2
    .parameter "img"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->img:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .registers 2
    .parameter "media"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->media:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNewsContent(Ljava/lang/String;)V
    .registers 2
    .parameter "newsContent"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->newsContent:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNewsDesc(Ljava/lang/String;)V
    .registers 2
    .parameter "newsDesc"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->newsDesc:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUrl"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->newsUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNewsUuid(Ljava/lang/String;)V
    .registers 2
    .parameter "newsUuid"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->newsUuid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .registers 2
    .parameter "origin"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->origin:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .registers 2
    .parameter "pubTime"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->pubTime:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/olivephone/model/TextNews;->type:Ljava/lang/String;

    .line 24
    return-void
.end method
