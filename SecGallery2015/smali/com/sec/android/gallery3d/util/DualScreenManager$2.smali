.class Lcom/sec/android/gallery3d/util/DualScreenManager$2;
.super Ljava/lang/Object;
.source "DualScreenManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;->setScreenChangeListener(Z)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$2;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenChanged(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setMoveToScreen(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$2;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DualScreenManager"

    const-string/jumbo v2, "setScreenChangeListener swapTopTask is finished)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.update.actionbar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$2;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$2;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    return-void
.end method
