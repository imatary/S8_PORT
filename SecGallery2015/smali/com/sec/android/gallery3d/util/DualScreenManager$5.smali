.class Lcom/sec/android/gallery3d/util/DualScreenManager$5;
.super Landroid/content/BroadcastReceiver;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-interface {v4, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "gallery.sub.backpressed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SUB_BACK_PRESSED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "gallery.closesub"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_CLOSE_SUB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "gallery.closemain"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_CLOSE_MAIN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "gallery.movesub"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_MOVE_SUB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->moveToMainScreen(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "gallery.movemain"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->moveToSubScreen(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "gallery.mainactivity.changestate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_MAIN_ACTIVITY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$400(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/app/StateManager;->changeStateFromOtherActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "gallery.subactivity.changestate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SUB_ACTIVITY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$400(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/app/StateManager;->changeStateFromOtherActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "gallery.shrink.from.main"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SHIRNK_FROM_MAIN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->expandShrinkDualView(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "gallery.shrink.from.sub"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SHIRNK_FROM_SUB"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->expandShrinkDualView(Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "gallery.launch.otheractivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_LAUNCH_OTHER_ACTIVITY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->launchOtherActivityinMain(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "gallery.update.actionbar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_UPDATE_ACTIONBAR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/android/gallery3d/util/DualScreenManager$5$1;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$5$1;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager$5;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "gallery.subactivity.itemchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SUB_ITEM_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$400(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/app/StateManager;->changeDataFromOtherActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "gallery.mainactivity.itemchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_MAIN_ITEM_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$400(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/app/StateManager;->changeDataFromOtherActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "gallery.shrink"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_NOTI_SHRINK_ACTION MoveToScreen:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMoveToScreen()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_f
    new-instance v5, Lcom/sec/android/gallery3d/util/DualScreenManager$5$2;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$5$2;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager$5;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v5, "gallery.expand"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_NOTI_EXPAND_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/android/gallery3d/util/DualScreenManager$5$3;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$5$3;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager$5;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "gallery.settingchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "DualScreenManager"

    const-string/jumbo v6, "onReceive :: SDualScreenUtil.LOCAL_BROADCAST_ACTION_SETTING_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
