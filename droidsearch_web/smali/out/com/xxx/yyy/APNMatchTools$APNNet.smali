.class public Lcom/xxx/yyy/APNMatchTools$APNNet;
.super Ljava/lang/Object;
.source "APNMatchTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxx/yyy/APNMatchTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APNNet"
.end annotation


# static fields
.field public static CMNET:Ljava/lang/String;

.field public static CMWAP:Ljava/lang/String;

.field public static GNET_3:Ljava/lang/String;

.field public static GWAP_3:Ljava/lang/String;

.field public static UNINET:Ljava/lang/String;

.field public static UNIWAP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "cmwap"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMWAP:Ljava/lang/String;

    .line 23
    const-string v0, "cmnet"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMNET:Ljava/lang/String;

    .line 32
    const-string v0, "3gwap"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GWAP_3:Ljava/lang/String;

    .line 37
    const-string v0, "3gnet"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GNET_3:Ljava/lang/String;

    .line 42
    const-string v0, "uniwap"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNIWAP:Ljava/lang/String;

    .line 46
    const-string v0, "uninet"

    sput-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNINET:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
