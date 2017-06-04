.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$51;
.super Landroid/content/BroadcastReceiver;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->registerSIPBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$51;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$51;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const-string/jumbo v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsSIPVisible:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$39602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    return-void
.end method
