.class public Lcom/olivephone/constant/MyThread;
.super Ljava/lang/Object;
.source "MyThread.java"


# static fields
.field public static isAlive:Z

.field public static myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/olivephone/constant/MyThread;->isAlive:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
