.class Lcom/olivephone/cu/ImageNewsActivity$6;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$6;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/olivephone/cu/ImageNewsActivity$6;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    #calls: Lcom/olivephone/cu/ImageNewsActivity;->popMore()V
    invoke-static {v0}, Lcom/olivephone/cu/ImageNewsActivity;->access$0(Lcom/olivephone/cu/ImageNewsActivity;)V

    .line 305
    const/4 v0, 0x0

    return v0
.end method
