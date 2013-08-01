.class Lcom/olivephone/cu/TextNewsActivity$10;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->tool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;
    .registers 2
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 565
    packed-switch p2, :pswitch_data_104

    .line 685
    .end local p1
    :goto_3
    :pswitch_3
    return-void

    .line 567
    .restart local p1
    :pswitch_4
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    new-instance v9, Lcom/olivephone/sqlite/DBHelper;

    .line 568
    iget-object v10, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const-string v11, "zsxhdb"

    .line 569
    const/4 v12, 0x0

    sget v13, Lcom/olivephone/constant/IntegerConstant;->DB_VERSION:I

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/olivephone/sqlite/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 567
    iput-object v9, v8, Lcom/olivephone/cu/TextNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    .line 570
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v8, v8, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5d

    .line 571
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/TextNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v10, v10, Lcom/olivephone/cu/TextNewsActivity;->adv:Lcom/olivephone/model/Advertise;

    invoke-virtual {v10}, Lcom/olivephone/model/Advertise;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    const-string v10, "(\u65b0\u95fb)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v10, v10, Lcom/olivephone/cu/TextNewsActivity;->adv:Lcom/olivephone/model/Advertise;

    invoke-virtual {v10}, Lcom/olivephone/model/Advertise;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    .line 573
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    .line 571
    invoke-virtual {v8, v9, v10, v11}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 582
    :goto_4e
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/TextNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    invoke-virtual {v8}, Lcom/olivephone/sqlite/DBHelper;->close()V

    .line 583
    const-string v8, "\u8be5\u65b0\u95fb\u5df2\u88ab\u6536\u85cf"

    .line 584
    iget-object v9, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 583
    invoke-static {v8, v9}, Lcom/olivephone/util/DisplayToast;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3

    .line 575
    :cond_5d
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    .line 576
    iget-object v9, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v9, v9, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/olivephone/model/TextNews;

    .line 577
    .local v7, tn:Lcom/olivephone/model/TextNews;
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v8, v8, Lcom/olivephone/cu/TextNewsActivity;->dbHelper:Lcom/olivephone/sqlite/DBHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    const-string v10, "(\u65b0\u95fb)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v10

    .line 579
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    .line 577
    invoke-virtual {v8, v9, v10, v11}, Lcom/olivephone/sqlite/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    goto :goto_4e

    .line 588
    .end local v7           #tn:Lcom/olivephone/model/TextNews;
    :pswitch_97
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 590
    .local v6, factory:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    .line 589
    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 592
    .local v1, alertView:Landroid/view/View;
    const v8, 0x7f070002

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 591
    check-cast v4, Landroid/widget/Button;

    .line 595
    .local v4, bt_sendMessage:Landroid/widget/Button;
    const v8, 0x7f070003

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 594
    check-cast v2, Landroid/widget/Button;

    .line 597
    .local v2, bt_cancel:Landroid/widget/Button;
    const v8, 0x7f070001

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 596
    check-cast v3, Landroid/widget/Button;

    .line 598
    .local v3, bt_phoneBook:Landroid/widget/Button;
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 599
    const/high16 v9, 0x7f07

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    .line 598
    iput-object p1, v8, Lcom/olivephone/cu/TextNewsActivity;->et_phone:Landroid/widget/EditText;

    .line 600
    new-instance v8, Landroid/app/AlertDialog$Builder;

    .line 601
    iget-object v9, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 600
    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 602
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 603
    const-string v8, "\u5206\u4eab\u65b0\u95fb"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 604
    const v8, 0x7f020024

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 605
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 607
    new-instance v5, Lcom/olivephone/cu/TextNewsActivity$10$1;

    invoke-direct {v5, p0, v0}, Lcom/olivephone/cu/TextNewsActivity$10$1;-><init>(Lcom/olivephone/cu/TextNewsActivity$10;Landroid/app/AlertDialog;)V

    .line 671
    .local v5, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 677
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertView:Landroid/view/View;
    .end local v2           #bt_cancel:Landroid/widget/Button;
    .end local v3           #bt_phoneBook:Landroid/widget/Button;
    .end local v4           #bt_sendMessage:Landroid/widget/Button;
    .end local v5           #clickListener:Landroid/view/View$OnClickListener;
    .end local v6           #factory:Landroid/view/LayoutInflater;
    .restart local p1
    :pswitch_f7
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->showNewList()V
    invoke-static {v8}, Lcom/olivephone/cu/TextNewsActivity;->access$5(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 678
    iget-object v8, p0, Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    #calls: Lcom/olivephone/cu/TextNewsActivity;->hiddenNewsContent()V
    invoke-static {v8}, Lcom/olivephone/cu/TextNewsActivity;->access$6(Lcom/olivephone/cu/TextNewsActivity;)V

    goto/16 :goto_3

    .line 565
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_4
        :pswitch_97
        :pswitch_f7
        :pswitch_3
    .end packed-switch
.end method
