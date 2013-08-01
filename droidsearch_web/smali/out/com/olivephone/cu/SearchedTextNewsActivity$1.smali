.class Lcom/olivephone/cu/SearchedTextNewsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SearchedTextNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchedTextNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SearchedTextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchedTextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchedTextNewsActivity$1;->this$0:Lcom/olivephone/cu/SearchedTextNewsActivity;

    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 24
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    return v0
.end method
