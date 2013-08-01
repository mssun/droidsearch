.class Lcom/olivephone/cu/TextNewsActivity$11$2;
.super Landroid/webkit/WebViewClient;
.source "TextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$11;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$11;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$11$2;->this$1:Lcom/olivephone/cu/TextNewsActivity$11;

    .line 786
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 789
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 790
    const/4 v0, 0x1

    return v0
.end method
