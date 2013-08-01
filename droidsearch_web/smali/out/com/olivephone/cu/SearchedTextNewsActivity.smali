.class public Lcom/olivephone/cu/SearchedTextNewsActivity;
.super Landroid/app/Activity;
.source "SearchedTextNewsActivity.java"


# instance fields
.field lin_textnews:Landroid/widget/LinearLayout;

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setWebViewProperty(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "wv_newcontent"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V

    .line 34
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 35
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 37
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 38
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/SearchedTextNewsActivity;->setContentView(I)V

    .line 16
    invoke-virtual {p0}, Lcom/olivephone/cu/SearchedTextNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 17
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "newsurl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, url:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aurl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->wv:Landroid/webkit/WebView;

    .line 20
    iget-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->wv:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lcom/olivephone/cu/SearchedTextNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V

    .line 22
    iget-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->wv:Landroid/webkit/WebView;

    new-instance v3, Lcom/olivephone/cu/SearchedTextNewsActivity$1;

    invoke-direct {v3, p0}, Lcom/olivephone/cu/SearchedTextNewsActivity$1;-><init>(Lcom/olivephone/cu/SearchedTextNewsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 28
    iget-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/olivephone/cu/SearchedTextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->lin_textnews:Landroid/widget/LinearLayout;

    .line 30
    iget-object v2, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->lin_textnews:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/olivephone/cu/SearchedTextNewsActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method
