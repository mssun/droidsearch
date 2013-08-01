.class public Lcom/olivephone/model/UserSetting;
.super Ljava/lang/Object;
.source "UserSetting.java"


# instance fields
.field private address:Ljava/lang/String;

.field private autostart:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private tel:Ljava/lang/String;

.field private tishi:Ljava/lang/String;

.field private typeface:Ljava/lang/String;

.field private update:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAutostart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->autostart:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getTishi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->tishi:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->typeface:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/olivephone/model/UserSetting;->update:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->address:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setAutostart(Ljava/lang/String;)V
    .registers 2
    .parameter "autostart"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->autostart:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->key:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .registers 2
    .parameter "tel"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->tel:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTishi(Ljava/lang/String;)V
    .registers 2
    .parameter "tishi"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->tishi:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .registers 2
    .parameter "typeface"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->typeface:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .registers 2
    .parameter "update"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/olivephone/model/UserSetting;->update:Ljava/lang/String;

    .line 30
    return-void
.end method
