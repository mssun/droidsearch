.class Lcom/olivephone/cu/TextNewsActivity$10$1;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$10;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$10;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    iput-object p2, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->val$alertDialog:Landroid/app/AlertDialog;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v10, v3

    .line 611
    .local v10, id:J
    const-wide/32 v3, 0x7f070002

    cmp-long v3, v10, v3

    if-nez v3, :cond_cf

    .line 612
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->et_phone:Landroid/widget/EditText;

    .line 613
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, phone:Ljava/lang/String;
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    .line 615
    invoke-static {v2, v3}, Lcom/olivephone/util/PhoneValidate;->validate(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 618
    const-string v8, "(\u6765\u81ea\uff1a\u65b0\u534e\u9891\u5a92)"

    .line 619
    .local v8, from:Ljava/lang/String;
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->et_phone:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    iget v3, v3, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9b

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/TextNewsActivity;->adv:Lcom/olivephone/model/Advertise;

    .line 623
    invoke-virtual {v4}, Lcom/olivephone/model/Advertise;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/TextNewsActivity;->adv:Lcom/olivephone/model/Advertise;

    .line 625
    invoke-virtual {v4}, Lcom/olivephone/model/Advertise;->getNewsUrl()Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 626
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 622
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, context:Ljava/lang/String;
    :goto_73
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    .line 640
    .local v1, sms:Landroid/telephony/gsm/SmsManager;
    invoke-virtual {v1, v7}, Landroid/telephony/gsm/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 644
    .local v13, texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 645
    move-object v0, v13

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 646
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 642
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/gsm/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 649
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    .line 650
    const-string v4, "\u53d1\u9001\u6210\u529f"

    .line 651
    const/4 v5, 0x0

    .line 648
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 652
    .local v14, toast:Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 653
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 667
    .end local v1           #sms:Landroid/telephony/gsm/SmsManager;
    .end local v2           #phone:Ljava/lang/String;
    .end local v7           #context:Ljava/lang/String;
    .end local v8           #from:Ljava/lang/String;
    .end local v13           #texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #toast:Landroid/widget/Toast;
    :cond_9a
    :goto_9a
    return-void

    .line 628
    .restart local v2       #phone:Ljava/lang/String;
    .restart local v8       #from:Ljava/lang/String;
    :cond_9b
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    .line 629
    iget-object v4, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v4

    iget v4, v4, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/olivephone/model/TextNews;

    .line 630
    .local v12, textNews:Lcom/olivephone/model/TextNews;
    new-instance v3, Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v12}, Lcom/olivephone/model/TextNews;->getBigTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v12}, Lcom/olivephone/model/TextNews;->getNewsUrl()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 634
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 630
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #context:Ljava/lang/String;
    goto :goto_73

    .line 655
    .end local v2           #phone:Ljava/lang/String;
    .end local v7           #context:Ljava/lang/String;
    .end local v8           #from:Ljava/lang/String;
    .end local v12           #textNews:Lcom/olivephone/model/TextNews;
    :cond_cf
    const-wide/32 v3, 0x7f070001

    cmp-long v3, v10, v3

    if-nez v3, :cond_f5

    .line 656
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v9, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 662
    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->this$1:Lcom/olivephone/cu/TextNewsActivity$10;

    #getter for: Lcom/olivephone/cu/TextNewsActivity$10;->this$0:Lcom/olivephone/cu/TextNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/TextNewsActivity$10;->access$0(Lcom/olivephone/cu/TextNewsActivity$10;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Lcom/olivephone/cu/TextNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9a

    .line 664
    .end local v9           #i:Landroid/content/Intent;
    :cond_f5
    const-wide/32 v3, 0x7f070003

    cmp-long v3, v10, v3

    if-nez v3, :cond_9a

    .line 665
    iget-object v3, p0, Lcom/olivephone/cu/TextNewsActivity$10$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_9a
.end method
