.class Lcom/olivephone/cu/RSSNewsActivity$7$1;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity$7;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    iput-object p2, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->val$alertDialog:Landroid/app/AlertDialog;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    const/4 v14, 0x0

    const/4 v3, 0x0

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    int-to-long v10, v4

    .line 314
    .local v10, id:J
    const-wide/32 v4, 0x7f070002

    cmp-long v4, v10, v4

    if-nez v4, :cond_88

    .line 315
    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/RSSNewsActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, phone:Ljava/lang/String;
    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/olivephone/util/PhoneValidate;->validate(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 317
    const-string v8, "(\u6765\u81ea\uff1a\u65b0\u534e\u9891\u5a92)"

    .line 318
    .local v8, from:Ljava/lang/String;
    iget-object v4, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v4}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/olivephone/cu/RSSNewsActivity;->et_phone:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v5}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/RSSNewsActivity;->title:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v5}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/olivephone/cu/RSSNewsActivity;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, context:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    .line 321
    .local v1, sms:Landroid/telephony/gsm/SmsManager;
    invoke-virtual {v1, v7}, Landroid/telephony/gsm/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 322
    .local v12, texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v12

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/gsm/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 324
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v3

    const-string v4, "\u53d1\u9001\u6210\u529f"

    .line 323
    invoke-static {v3, v4, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 326
    .local v13, toast:Landroid/widget/Toast;
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 327
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 338
    .end local v1           #sms:Landroid/telephony/gsm/SmsManager;
    .end local v2           #phone:Ljava/lang/String;
    .end local v7           #context:Ljava/lang/String;
    .end local v8           #from:Ljava/lang/String;
    .end local v12           #texts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #toast:Landroid/widget/Toast;
    :cond_87
    :goto_87
    return-void

    .line 329
    :cond_88
    const-wide/32 v3, 0x7f070001

    cmp-long v3, v10, v3

    if-nez v3, :cond_ad

    .line 330
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v9, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 333
    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->this$1:Lcom/olivephone/cu/RSSNewsActivity$7;

    #getter for: Lcom/olivephone/cu/RSSNewsActivity$7;->this$0:Lcom/olivephone/cu/RSSNewsActivity;
    invoke-static {v3}, Lcom/olivephone/cu/RSSNewsActivity$7;->access$0(Lcom/olivephone/cu/RSSNewsActivity$7;)Lcom/olivephone/cu/RSSNewsActivity;

    move-result-object v3

    invoke-virtual {v3, v9, v14}, Lcom/olivephone/cu/RSSNewsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_87

    .line 335
    .end local v9           #i:Landroid/content/Intent;
    :cond_ad
    const-wide/32 v3, 0x7f070003

    cmp-long v3, v10, v3

    if-nez v3, :cond_87

    .line 336
    iget-object v3, p0, Lcom/olivephone/cu/RSSNewsActivity$7$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_87
.end method
