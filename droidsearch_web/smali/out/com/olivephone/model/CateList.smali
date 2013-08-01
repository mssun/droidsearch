.class public Lcom/olivephone/model/CateList;
.super Ljava/lang/Object;
.source "CateList.java"


# instance fields
.field private cateId:Ljava/lang/String;

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCateId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/olivephone/model/CateList;->cateId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/olivephone/model/CateList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/olivephone/model/CateList;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/olivephone/model/CateList;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/olivephone/model/CateList;->isChecked:Z

    return v0
.end method

.method public setCateId(Ljava/lang/String;)V
    .registers 2
    .parameter "cateId"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/olivephone/model/CateList;->cateId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "isChecked"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/olivephone/model/CateList;->isChecked:Z

    .line 15
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/olivephone/model/CateList;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "picUrl"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/olivephone/model/CateList;->picUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/olivephone/model/CateList;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
