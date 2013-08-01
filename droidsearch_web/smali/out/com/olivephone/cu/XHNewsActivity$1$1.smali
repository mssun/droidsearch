.class Lcom/olivephone/cu/XHNewsActivity$1$1;
.super Ljava/lang/Object;
.source "XHNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/XHNewsActivity$1;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/XHNewsActivity$1;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/XHNewsActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/XHNewsActivity$1$1;)Lcom/olivephone/cu/XHNewsActivity$1;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 21
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_12e

    .line 162
    .end local p1
    :goto_3
    :pswitch_3
    return-void

    .line 80
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    new-instance v13, Lcom/olivephone/sqlite/DBHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v14, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v14}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v14

    const-string v15, "zsxhdb"

    const/16 v16, 0x0

    .line 81
    sget v17, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct/range {v13 .. v17}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    iput-object v13, v12, Lcom/olivephone/cu/XHNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 83
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v13, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v13}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/olivephone/constant/URLConstant;->xhNews(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/olivephone/parserxml/TextNewsHandler;

    invoke-direct {v14}, Lcom/olivephone/parserxml/TextNewsHandler;-><init>()V

    invoke-static {v13, v14}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v12, Lcom/olivephone/cu/XHNewsActivity;->list:Ljava/util/List;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/olivephone/cu/XHNewsActivity;->list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v13, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v13}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v13

    iget-object v13, v13, Lcom/olivephone/cu/XHNewsActivity;->selected:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/olivephone/model/TextNews;

    .line 85
    .local v11, tn:Lcom/olivephone/model/TextNews;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/olivephone/cu/XHNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v11}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 87
    invoke-virtual {v15}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v15

    .line 86
    invoke-virtual {v12, v13, v14, v15}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/olivephone/cu/XHNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v12}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 89
    const-string v12, "\u8be5\u65b0\u95fb\u5df2\u88ab\u6536\u85cf"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v13, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v13}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_a8} :catch_aa

    goto/16 :goto_3

    .line 90
    .end local v11           #tn:Lcom/olivephone/model/TextNews;
    :catch_aa
    move-exception v12

    move-object v9, v12

    .line 92
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 97
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 98
    .local v10, factory:Landroid/view/LayoutInflater;
    const/high16 v12, 0x7f03

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, alertView:Landroid/view/View;
    const v12, 0x7f070002

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 99
    check-cast v7, Landroid/widget/Button;

    .line 103
    .local v7, bt_sendMessage:Landroid/widget/Button;
    const v12, 0x7f070003

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 102
    check-cast v5, Landroid/widget/Button;

    .line 105
    .local v5, bt_cancel:Landroid/widget/Button;
    const v12, 0x7f070001

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 104
    check-cast v6, Landroid/widget/Button;

    .line 106
    .local v6, bt_phoneBook:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v12, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v12}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v12

    .line 107
    const/high16 v13, 0x7f07

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    .line 106
    move-object/from16 v0, p1

    move-object v1, v12

    iput-object v0, v1, Lcom/olivephone/cu/XHNewsActivity;->et_phone:Landroid/widget/EditText;

    .line 108
    new-instance v12, Landroid/app/AlertDialog$Builder;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/olivephone/cu/XHNewsActivity$1$1;->this$1:Lcom/olivephone/cu/XHNewsActivity$1;

    move-object v13, v0

    #getter for: Lcom/olivephone/cu/XHNewsActivity$1;->this$0:Lcom/olivephone/cu/XHNewsActivity;
    invoke-static {v13}, Lcom/olivephone/cu/XHNewsActivity$1;->access$0(Lcom/olivephone/cu/XHNewsActivity$1;)Lcom/olivephone/cu/XHNewsActivity;

    move-result-object v13

    .line 108
    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 110
    .local v3, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 111
    const-string v12, "\u5206\u4eab\u65b0\u95fb"

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    const v12, 0x7f020024

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 113
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 115
    new-instance v8, Lcom/olivephone/cu/XHNewsActivity$1$1$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/olivephone/cu/XHNewsActivity$1$1$1;-><init>(Lcom/olivephone/cu/XHNewsActivity$1$1;Landroid/app/AlertDialog;)V

    .line 153
    .local v8, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 78
    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b1
        :pswitch_3
    .end packed-switch
.end method
