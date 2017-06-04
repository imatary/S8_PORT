.class Lcom/sec/samsung/gallery/drawer/GalleryTab$1;
.super Landroid/os/Handler;
.source "GalleryTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    const-string/jumbo v2, "key_check_mtp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->updateDynamicTabs(Z)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$000(Lcom/sec/samsung/gallery/drawer/GalleryTab;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->init()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$200(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->showTabInner()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->hideTabInner()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->setEnableTabInner(Z)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$500(Lcom/sec/samsung/gallery/drawer/GalleryTab;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setAlpha(F)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->requestFocus()Z

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->handleDCSwitchInner(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$700(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->moveTabInner(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$800(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->updateBottomIndicator(F)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshTabInner()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1000(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshLayoutParams()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshLayoutParams()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
