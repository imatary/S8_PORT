.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;
.super Landroid/content/BroadcastReceiver;
.source "SlideShowViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "SlideShowViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive, action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->ACTION_PALM_DOWN:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SlideShowViewState"

    const-string/jumbo v5, "MEDIA_UNMOUNTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isDataContainsSDCardPath()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SlideShowViewState"

    const-string/jumbo v5, "Stop slideshow by media unmounted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v4, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE:Ljava/lang/String;

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDockStatePrevious:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1600()I

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSmartDockStatePrevious:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1700()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE_DOCKED:I

    if-ne v4, v5, :cond_5

    sget v4, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE_UNDOCKED:I

    if-ne v1, v4, :cond_5

    :cond_4
    const-string/jumbo v4, "SlideShowViewState"

    const-string/jumbo v5, "Stop slideshow by dock event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    :cond_5
    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDockStatePrevious:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1602(I)I

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSmartDockStatePrevious:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1702(I)I

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isDataContainsMTPPath()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SlideShowViewState"

    const-string/jumbo v5, "Stop slideshow by MTP media unmounted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "request"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "stop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SlideShowViewState"

    const-string/jumbo v5, "Stop slideshow by request"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    goto/16 :goto_0
.end method
