.class Lcom/olivephone/cu/EnshrineActivity$8;
.super Ljava/lang/Object;
.source "EnshrineActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/EnshrineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/EnshrineActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/EnshrineActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/EnshrineActivity$8;)Lcom/olivephone/cu/EnshrineActivity;
    .registers 2
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/olivephone/cu/EnshrineActivity$8;->this$0:Lcom/olivephone/cu/EnshrineActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65b0\u534e\u9891\u5a92\u63d0\u793a\u60a8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    const-string v1, "\u786e\u5b9a\u8981\u6e05\u7a7a\u641c\u85cf\u5217\u8868\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    const-string v1, "\u662f\u7684\uff0c\u6211\u8981\u6e05\u7a7a"

    new-instance v2, Lcom/olivephone/cu/EnshrineActivity$8$1;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineActivity$8$1;-><init>(Lcom/olivephone/cu/EnshrineActivity$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const-string v1, "\u4e0d\uff0c\u6211\u4e0d\u60f3\u6e05\u7a7a"

    new-instance v2, Lcom/olivephone/cu/EnshrineActivity$8$2;

    invoke-direct {v2, p0}, Lcom/olivephone/cu/EnshrineActivity$8$2;-><init>(Lcom/olivephone/cu/EnshrineActivity$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    const/4 v0, 0x0

    return v0
.end method
