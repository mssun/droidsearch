.class public final Lcom/xxx/yyy/APNMatchTools;
.super Ljava/lang/Object;
.source "APNMatchTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/APNMatchTools$APNNet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchAPN(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "currentName"

    .prologue
    const-string v2, "default"

    const-string v1, ""

    .line 52
    const-string v0, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p0, :cond_12

    .line 53
    :cond_e
    const-string v0, ""

    move-object v0, v1

    .line 70
    :goto_11
    return-object v0

    .line 55
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 56
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMNET:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 57
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMNET:Ljava/lang/String;

    goto :goto_11

    .line 58
    :cond_21
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMWAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 59
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMWAP:Ljava/lang/String;

    goto :goto_11

    .line 60
    :cond_2c
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GNET_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 61
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GNET_3:Ljava/lang/String;

    goto :goto_11

    .line 62
    :cond_37
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GWAP_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 63
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GWAP_3:Ljava/lang/String;

    goto :goto_11

    .line 64
    :cond_42
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNINET:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 65
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNINET:Ljava/lang/String;

    goto :goto_11

    .line 66
    :cond_4d
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNIWAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 67
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNIWAP:Ljava/lang/String;

    goto :goto_11

    .line 68
    :cond_58
    const-string v0, "default"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 69
    const-string v0, "default"

    move-object v0, v2

    goto :goto_11

    .line 70
    :cond_64
    const-string v0, ""

    move-object v0, v1

    goto :goto_11
.end method
