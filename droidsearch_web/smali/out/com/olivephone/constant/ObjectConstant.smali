.class public Lcom/olivephone/constant/ObjectConstant;
.super Ljava/lang/Object;
.source "ObjectConstant.java"


# static fields
.field public static drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/olivephone/constant/ObjectConstant;->drawable:Landroid/graphics/drawable/Drawable;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
