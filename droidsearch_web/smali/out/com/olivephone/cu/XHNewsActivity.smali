.class public Lcom/olivephone/cu/XHNewsActivity;
.super Landroid/app/Activity;
.source "XHNewsActivity.java"


# instance fields
.field dbHelper:Lcom/olivephone/sqlite/DBHelper;

.field detector:Landroid/view/GestureDetector;

.field et_phone:Landroid/widget/EditText;

.field lin_textnews:Landroid/widget/LinearLayout;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pd_textnews:Landroid/app/ProgressDialog;

.field selected:Ljava/lang/String;

.field url:Ljava/lang/String;

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->list:Ljava/util/List;

    .line 42
    return-void
.end method

.method private setWebViewProperty(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "wv_newcontent"

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V

    .line 200
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 202
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 203
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 205
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 206
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/olivephone/cu/XHNewsActivity;->setContentView(I)V

    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/olivephone/cu/XHNewsActivity$1;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/XHNewsActivity$1;-><init>(Lcom/olivephone/cu/XHNewsActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 183
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->wv:Landroid/webkit/WebView;

    .line 184
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->wv:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/olivephone/cu/XHNewsActivity;->setWebViewProperty(Landroid/webkit/WebView;)V

    .line 185
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->url:Ljava/lang/String;

    .line 186
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/olivephone/cu/XHNewsActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/olivephone/cu/XHNewsActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->selected:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->wv:Landroid/webkit/WebView;

    new-instance v1, Lcom/olivephone/cu/XHNewsActivity$2;

    invoke-direct {v1, p0}, Lcom/olivephone/cu/XHNewsActivity$2;-><init>(Lcom/olivephone/cu/XHNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/olivephone/cu/XHNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->lin_textnews:Landroid/widget/LinearLayout;

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/olivephone/cu/XHNewsActivity;->lin_textnews:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity;->lin_textnews:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/olivephone/cu/XHNewsActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string v0, "\u65b0\u95fb\u4e2d\u5fc3"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    const/4 v0, 0x1

    const-string v1, "\u65b0\u534e\u56fe\u7247"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    const/4 v0, 0x2

    const-string v1, "\u65b0\u534e\u89c6\u9891"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const/4 v0, 0x3

    const-string v1, "\u8bbe\u7f6e"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 214
    const/4 v0, 0x4

    const-string v1, "\u9000\u51fa"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_6c

    .line 268
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 222
    :pswitch_c
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->finish()V

    .line 223
    new-instance v0, Landroid/content/Intent;

    .line 224
    const-class v4, Lcom/olivephone/cu/TextNewsActivity;

    .line 223
    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, intent0:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/olivephone/cu/XHNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 228
    .end local v0           #intent0:Landroid/content/Intent;
    :pswitch_1a
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->finish()V

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/olivephone/cu/ImageNewsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v1, intent1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/olivephone/cu/XHNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 234
    .end local v1           #intent1:Landroid/content/Intent;
    :pswitch_28
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->finish()V

    .line 235
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/olivephone/cu/VideoNewsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v2, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/olivephone/cu/XHNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 240
    .end local v2           #intent2:Landroid/content/Intent;
    :pswitch_36
    invoke-virtual {p0}, Lcom/olivephone/cu/XHNewsActivity;->finish()V

    .line 241
    new-instance v3, Landroid/content/Intent;

    .line 242
    const-class v4, Lcom/olivephone/cu/SettingActivity;

    .line 241
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v3, intent3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/olivephone/cu/XHNewsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 246
    .end local v3           #intent3:Landroid/content/Intent;
    :pswitch_44
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    const-string v5, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 248
    const-string v5, "\u4f60\u786e\u5b9a\u8981\u9000\u51fa\u5417?"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 249
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/olivephone/cu/XHNewsActivity$3;

    invoke-direct {v6, p0}, Lcom/olivephone/cu/XHNewsActivity$3;-><init>(Lcom/olivephone/cu/XHNewsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 262
    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7

    .line 220
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1a
        :pswitch_28
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method
