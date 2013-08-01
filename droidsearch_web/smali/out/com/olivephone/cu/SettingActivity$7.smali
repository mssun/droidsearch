.class Lcom/olivephone/cu/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_help_ext:Z

    if-eqz v0, :cond_d

    .line 458
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 466
    :goto_c
    return v2

    .line 460
    :cond_d
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 461
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->tv_help_content:Landroid/widget/TextView;

    const-string v1, "1\u3001\u8f6f\u4ef6\u4ecb\u7ecd\n\u201d\u65b0\u534e\u9891\u5a92\u201d\u662f\u4e00\u6b3e\u9762\u5411\u624b\u673a\u7528\u6237\u7684\u4f18\u79c0\u65b0\u95fb\u9605\u8bfb\u5ba2\u6237\u7aef\uff0c\u4f9d\u6258\u65b0\u534e\u793e\u5f3a\u5927\u7684\u5a92\u4f53\u8d44\u6e90\uff0c\u4ee5\u53ca\u72ec\u6709\u7684\u89c2\u5bdf\u89d2\u5ea6\uff0c\u4e3a\u7528\u6237\u63d0\u4f9b\u5168\u65b9\u4f4d\u7684\u65b0\u95fb\u65f6\u8baf\uff0c\u4ee5\u53ca\u5b8c\u5584\u7684\u9605\u8bfb\u4f53\u9a8c\u3002\n\n2\u3001\u64cd\u4f5c\u8bf4\u660e\n\u680f\u76ee\u5207\u6362\uff1a\u5728\u83dc\u5355\u4e2d\u70b9\u9009\u201d\u65b0\u95fb\u4e2d\u5fc3\u201d\u3001\u65b0\u534e\u56fe\u7247\u201d\u3001\u201d\u65b0\u534e\u89c6\u9891\u201d\u53ef\u5b9e\u73b0\u680f\u76ee\u7684\u81ea\u7531\u5207\u6362\u3002\n\u9891\u9053\u5207\u6362\uff1a\u70b9\u5de6\u4e0a\u89d2\u4e0b\u62c9\u83dc\u5355\uff0c\u70b9\u9009\u559c\u6b22\u7684\u9891\u9053\u5373\u53ef\u8fdb\u884c\u5207\u6362\u3002\n\u957f\u6309\uff1a\u957f\u6309\u65b0\u95fb\u9605\u8bfb\u754c\u9762\u3001\u56fe\u7247\u67e5\u770b\u754c\u9762\uff0c\u6fc0\u6d3b\u201d\u5feb\u6377\u83dc\u5355\u201d\u3002\n\u624b\u52bf\u6ed1\u52a8\uff1a\u5728\u65b0\u95fb\u9605\u8bfb\u754c\u9762\u3001\u56fe\u7247\u67e5\u770b\u754c\u9762\uff0c\u5f80\u5de6\u5212\u5c4f\u5b9e\u73b0\u201d\u4e0a\u4e00\u6761\u201d+\uff0c\u5f80\u53f3\u5212\u5c4f\u5b9e\u73b0\u201d\u4e0b\u4e00\u6761\u201d\u3002\n\u8fd4\u56de\uff1a\u6309\u624b\u673a\u201d\u8fd4\u56de\u952e\u201d\u5373\u53ef\u5b9e\u73b0\u8fd4\u56de\u4e0a\u4e00\u6b65\u64cd\u4f5c\u3002\n\n3\u3001\u529f\u80fd\u8bf4\u660e\n\u65b0\u95fb\u9605\u8bfb\uff1a\u666e\u901a\u65b0\u95fb\u7684\u9605\u8bfb\u3002\n\u56fe\u7247\u6d4f\u89c8\uff1a\u56fe\u7247\u65b0\u95fb\u7684\u6d4f\u89c8\u3002\n\u89c6\u9891\u64ad\u653e\uff1a\u89c6\u9891\u65b0\u95fb\u7684\u64ad\u653e\u3002\n\u65b0\u95fb\u6536\u85cf\uff1a\u6536\u85cf\u559c\u6b22\u7684\u65b0\u95fb/\u56fe\u7247/\u89c6\u9891\uff0c\u65b9\u4fbf\u4e0b\u6b21\u67e5\u770b\u3002\n\u65b0\u95fb\u5206\u4eab\uff1a\u5c06\u60a8\u559c\u6b22\u7684\u65b0\u95fb/\u56fe\u7247\u4ee5\u77ed\u4fe1/\u5f69\u4fe1\u7684\u65b9\u5f0f\u53d1\u9001\u7ed9\u670b\u53cb\u3002\n\u56fe\u7247/\u89c6\u9891\u4e0b\u8f7d\uff1a\u5c06\u60a8\u559c\u6b22\u7684\u56fe\u7247/\u89c6\u9891\u4e0b\u8f7d\u5230\u624b\u673a\u3002\n\u91cd\u5927\u65b0\u95fb\u63d0\u9192\uff1a\u91cd\u5927\u65b0\u95fb\u4e8b\u4ef6\u53d1\u5e03\u63d0\u9192\u3002\n\u684c\u9762\u63d2\u4ef6\u663e\u793a\uff1a\u6eda\u52a8\u64ad\u653e\u65b0\u95fb\u6807\u9898\uff0c\u70b9\u6807\u9898\u5373\u53ef\u8fdb\u5165\u9605\u8bfb\u3002\n\n4\u3001\u8bbe\u7f6e\u8bf4\u660e\n\u7528\u6237\u6ce8\u518c\uff1a\u8f93\u5165\u60a8\u7684\u624b\u673a\u53f7\u7801\u5373\u53ef\u5b8c\u6210\u6ce8\u518c\u3002\n\u9891\u9053\u8bbe\u7f6e\uff1a\u60a8\u53ef\u4ee5\u6839\u636e\u81ea\u5df1\u7684\u559c\u597d\uff0c\u589e\u51cf\u9891\u9053\u3002\n\u66f4\u65b0\u8bbe\u7f6e\uff1a\u60a8\u53ef\u4ee5\u9009\u62e9\u81ea\u52a8\u548c\u624b\u52a8\u66f4\u65b0\u3002\n\u5f00\u673a\u8fd0\u884c\uff1a\u60a8\u53ef\u4ee5\u9009\u62e9\u5ba2\u6237\u7aef\u662f\u5426\u5f00\u673a\u8fd0\u884c\u3002\n\u5730\u57df\u8bbe\u7f6e\uff1a\u60a8\u53ef\u4ee5\u6839\u636e\u81ea\u5df1\u7684\u9700\u8981\u5b9a\u5236\u5730\u57df\u65b0\u95fb\u3002\n\u5b57\u4f53\u8bbe\u7f6e\uff1a\u60a8\u53ef\u4ee5\u6839\u636e\u81ea\u5df1\u7684\u9605\u8bfb\u4e60\u60ef\u8c03\u6574\u65b0\u95fb\u663e\u793a\u7684\u5b57\u4f53\u5927\u5c0f\u3002\n\u91cd\u5927\u65b0\u95fb\u63d0\u793a\u8bbe\u7f6e\uff1a\u8bbe\u7f6e\u63d0\u9192\u7684\u65b9\u5f0f\uff0c\u66f4\u53ef\u4e3a\u91cd\u5927\u65b0\u95fb\u8bbe\u7f6e\u5173\u952e\u5b57\u3002\n\n\n\u5982\u9047\u7f51\u7edc\u95ee\u9898\uff0c\u8bf7\u8c03\u6574\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5\u3002\n\u8877\u5fc3\u611f\u8c22\u60a8\u5bf9\u65b0\u534e\u9891\u5a92\u7684\u652f\u6301\uff0c\u6211\u4eec\u4f1a\u52aa\u529b\u505a\u5230\u66f4\u597d\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_help:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->sv_help:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$7;->this$0:Lcom/olivephone/cu/SettingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/SettingActivity;->iv_help_ext:Z

    goto :goto_c
.end method
