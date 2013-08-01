.class public Lcom/olivephone/util/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .parameter "str"
    .parameter "c"

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    return-void
.end method
