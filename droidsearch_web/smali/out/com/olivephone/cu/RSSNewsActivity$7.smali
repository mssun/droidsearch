.class Lcom/olivephone/cu/RSSNewsActivity$7;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->tool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 280
    packed-switch p2, :pswitch_data_c4

    .line 354
    .end local p1
    :goto_3
    :pswitch_3
    return-void

    .line 282
    .restart local p1
    :pswitch_4
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    new-instance v9, Lcom/olivephone/sqlite/DBHelper;

    iget-object v10, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const-string v11, "zsxhdb"

    const/4 v12, 0x0

    .line 283
    sget v13, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 282
    iput-object v9, v8, Lcom/olivephone/cu/RSSNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 285
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    iget-object v9, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v9, v9, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/olivephone/model/RssItem;

    .line 286
    .local v7, item:Lcom/olivephone/model/RssItem;
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/RSSNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/olivephone/model/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "(\u65b0\u95fb)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/olivephone/model/RssItem;->getLink()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 287
    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    .line 286
    invoke-virtual {v8, v9, v10, v11}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 288
    const-string v8, "\u8be5\u65b0\u95fb\u5df2\u88ab\u6536\u85cf"

    iget-object v9, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-static {v8, v9}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3

    .line 292
    .end local v7           #item:Lcom/olivephone/model/RssItem;
    :pswitch_55
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 293
    .local v6, factory:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, alertView:Landroid/view/View;
    const v8, 0x7f070002

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 294
    check-cast v4, Landroid/widget/Button;

    .line 298
    .local v4, bt_sendMessage:Landroid/widget/Button;
    const v8, 0x7f070003

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 297
    check-cast v2, Landroid/widget/Button;

    .line 300
    .local v2, bt_cancel:Landroid/widget/Button;
    const v8, 0x7f070001

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 299
    check-cast v3, Landroid/widget/Button;

    .line 301
    .local v3, bt_phoneBook:Landroid/widget/Button;
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 302
    const/high16 v9, 0x7f07

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    .line 301
    iput-object p1, v8, Lcom/olivephone/cu/RSSNewsActivity;->et_phone:Landroid/widget/EditText;

    .line 303
    new-instance v8, Landroid/app/AlertDialog$Builder;

    .line 304
    iget-object v9, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 303
    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 305
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 306
    const-string v8, "\u5206\u4eab\u65b0\u95fb"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    const v8, 0x7f020024

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    new-instance v5, Lcom/olivephone/cu/RSSNewsActivity$7$1;

    invoke-direct {v5, p0, v0}, Lcom/olivephone/cu/RSSNewsActivity$7$1;-><init>(Lcom/olivephone/cu/RSSNewsActivity$7;Landroid/app/AlertDialog;)V

    .line 341
    .local v5, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 346
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertView:Landroid/view/View;
    .end local v2           #bt_cancel:Landroid/widget/Button;
    .end local v3           #bt_phoneBook:Landroid/widget/Button;
    .end local v4           #bt_sendMessage:Landroid/widget/Button;
    .end local v5           #clickListener:Landroid/view/View$OnClickListener;
    .end local v6           #factory:Landroid/view/LayoutInflater;
    .restart local p1
    :pswitch_b5
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 347
    iget-object v8, p0, Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    #calls: Lcom/olivephone/cu/RSSNewsActivity;->hiddenNewsContent()V
    invoke-static {v8}, Lcom/olivephone/cu/RSSNewsActivity;->access$3(Lcom/olivephone/cu/RSSNewsActivity;)V

    goto/16 :goto_3

    .line 280
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_55
        :pswitch_b5
        :pswitch_3
    .end packed-switch
.end method
