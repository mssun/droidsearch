.class Lcom/olivephone/cu/ImageDetailActivity$2;
.super Ljava/lang/Object;
.source "ImageDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageDetailActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageDetailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/ImageDetailActivity$2;)Lcom/olivephone/cu/ImageDetailActivity;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    iput-boolean v3, v1, Lcom/olivephone/cu/ImageDetailActivity;->is_touch:Z

    .line 83
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/CharSequence;

    const-string v1, "\u4e0b\u8f7d"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u5206\u4eab"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8bbe\u4e3a\u684c\u9762\u80cc\u666f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6536\u85cf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v0, v1

    .line 85
    .local v0, cs:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/olivephone/cu/ImageDetailActivity$2;->this$0:Lcom/olivephone/cu/ImageDetailActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/olivephone/cu/ImageDetailActivity$2$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/ImageDetailActivity$2$1;-><init>(Lcom/olivephone/cu/ImageDetailActivity$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 156
    return v3
.end method
