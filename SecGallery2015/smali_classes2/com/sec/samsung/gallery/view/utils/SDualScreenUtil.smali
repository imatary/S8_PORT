.class public final Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;
.super Ljava/lang/Object;
.source "SDualScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;
    }
.end annotation


# static fields
.field public static final ACTION_SUBSCREEN_OFF:Ljava/lang/String; = "android.intent.action.SUBSCREEN_OFF"

.field public static final ACTION_SUBSCREEN_ON:Ljava/lang/String; = "android.intent.action.SUBSCREEN_ON"

.field public static final FOLDING_STATE:Ljava/lang/String; = "com.samsung.android.dualscreen.extra.FOLDING_STATE"

.field public static final FOLDING_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

.field private static final FeatureIsDualScreen:Z

.field public static final HALL_SENSOR_STATUS_UNFOLD:I = 0x1

.field public static final LAUNCH_EXPANDED:I = 0x2

.field public static final LAUNCH_MAIN_DEFAULT:I = 0x1

.field public static final LAUNCH_NOT_SET:I = 0x0

.field public static final LAUNCH_SUB_DEFAULT:I = 0x3

.field public static final LOCAL_BRCST_EXTRA_DUAL_STATE_NAME:Ljava/lang/String; = "dual_view_next_state_name"

.field public static final LOCAL_BRCST_EXTRA_START_DUAL_FROM_DETAIL:Ljava/lang/String; = "start_dual_from_detail"

.field public static final LOCAL_BROADCAST_ACTION_CLOSE_MAIN:Ljava/lang/String; = "gallery.closemain"

.field public static final LOCAL_BROADCAST_ACTION_CLOSE_SUB:Ljava/lang/String; = "gallery.closesub"

.field public static final LOCAL_BROADCAST_ACTION_LAUNCH_OTHER_ACTIVITY:Ljava/lang/String; = "gallery.launch.otheractivity"

.field public static final LOCAL_BROADCAST_ACTION_MAIN_ACTIVITY:Ljava/lang/String; = "gallery.mainactivity.changestate"

.field public static final LOCAL_BROADCAST_ACTION_MAIN_ITEM_CHANGED:Ljava/lang/String; = "gallery.mainactivity.itemchanged"

.field public static final LOCAL_BROADCAST_ACTION_MOVE_MAIN:Ljava/lang/String; = "gallery.movemain"

.field public static final LOCAL_BROADCAST_ACTION_MOVE_SUB:Ljava/lang/String; = "gallery.movesub"

.field public static final LOCAL_BROADCAST_ACTION_SETTING_CHANGED:Ljava/lang/String; = "gallery.settingchanged"

.field public static final LOCAL_BROADCAST_ACTION_SHIRNK_FROM_MAIN:Ljava/lang/String; = "gallery.shrink.from.main"

.field public static final LOCAL_BROADCAST_ACTION_SHIRNK_FROM_SUB:Ljava/lang/String; = "gallery.shrink.from.sub"

.field public static final LOCAL_BROADCAST_ACTION_SUB_ACTIVITY:Ljava/lang/String; = "gallery.subactivity.changestate"

.field public static final LOCAL_BROADCAST_ACTION_SUB_BACK_PRESSED:Ljava/lang/String; = "gallery.sub.backpressed"

.field public static final LOCAL_BROADCAST_ACTION_SUB_ITEM_CHANGED:Ljava/lang/String; = "gallery.subactivity.itemchanged"

.field public static final LOCAL_BROADCAST_ACTION_UPDATE_ACTIONBAR:Ljava/lang/String; = "gallery.update.actionbar"

.field public static final LOCAL_BROADCAST_INTENT_EXTRA_EXPAND_SWITCH_STATE:Ljava/lang/String; = "switch_state"

.field public static final LOCAL_BROADCAST_NOTI_EXPAND_ACTION:Ljava/lang/String; = "gallery.expand"

.field public static final LOCAL_BROADCAST_NOTI_SHRINK_ACTION:Ljava/lang/String; = "gallery.shrink"

.field public static final REQUEST_CODE_HIGHLIGHT_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDualScreenUtil"

.field private static mDualScreenActivtyStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDualScreenMode:Z

.field private static mIsInitialActivityLaunched:Z

.field private static mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private static mMoveToScreen:Z

.field private static mStackSync:Z

.field private static final reenterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsDualScreenMode:Z

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsInitialActivityLaunched:Z

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mMoveToScreen:Z

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mStackSync:Z

    sput-object v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mDualScreenActivtyStack:Ljava/util/Stack;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->reenterLock:Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    sput-object v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->shrinkScreen(Landroid/app/Activity;)V

    return-void
.end method

.method public static dualScreenActivityCount()I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public static expandShrinkDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->expandShrinkDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;ZZ)V

    return-void
.end method

.method public static expandShrinkDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->reenterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isSubScrOff(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->initDualView(Lcom/sec/android/gallery3d/app/StateManager;)V

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    if-eqz p2, :cond_3

    :try_start_1
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.shrink.from.sub"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.shrink.from.main"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->startShrinkAction()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->closeDualView(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.shrink"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->moveOtherScreen(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static finishActivity(Landroid/app/Activity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public static finishRelated(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "stopFrom"

    const-string/jumbo v2, "Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static finishWithCoupledActivity(Landroid/app/Activity;)V
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SDualScreenUtil"

    const-string/jumbo v3, "finishWithCoupledActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setFinishWithCoupledTask(Z)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    :cond_0
    return-void
.end method

.method public static getActivityLaunchMode(Landroid/app/Activity;)I
    .locals 4

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-ne v2, p0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget v0, v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mMode:I

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget v1, v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mMode:I

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eq v1, p0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getDualScreenActivtyStack()Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->reenterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mDualScreenActivtyStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mDualScreenActivtyStack:Ljava/util/Stack;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mDualScreenActivtyStack:Ljava/util/Stack;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->reenterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initDualView(Lcom/sec/android/gallery3d/app/StateManager;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->startExpandAction()V

    :cond_0
    return-void
.end method

.method public static isDualScreenMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsDualScreenMode:Z

    return v0
.end method

.method public static isExpandable(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsDualScreenMode:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isSubScrOff(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExpandableActivity(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInitialActivityLaunch()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsInitialActivityLaunched:Z

    return v0
.end method

.method public static isLandscape(Landroid/app/Activity;)Z
    .locals 9

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Point;->y:I

    iget v1, v5, Landroid/graphics/Point;->x:I

    if-le v1, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v6, "SDualScreenUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLandscape [isMainScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] [landscape1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[landscape2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isMainScreen(Landroid/app/Activity;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v3, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    sget-object v3, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$1;->$SwitchMap$com$samsung$android$sdk$dualscreen$SDualScreenActivity$DualScreen:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v3, "isMainScreen : DualScreen.UNKNOWN "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    const-string/jumbo v2, "SDualScreenUtil"

    const-string/jumbo v3, "isMainScreen : DualScreen.MAIN "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v3, "isMainScreen : DualScreen.SUB "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isMoveToScreen()Z
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMoveToScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mMoveToScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mMoveToScreen:Z

    return v0
.end method

.method public static isStackSyncing()Z
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStackSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mStackSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mStackSync:Z

    return v0
.end method

.method private static isSubScrOff(Landroid/app/Activity;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getDisplay(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getDisplay(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static launchOtherActivityinMain(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v2, "Activity Not Found !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeIntentForDualScreenMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static moveActivityToFront(Landroid/app/Activity;)V
    .locals 6

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-interface {v3, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SDualScreenUtil"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static moveOtherScreen(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.movesub"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.movemain"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static moveToMainScreen(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v2, "moveToMainScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setMoveToScreen(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public static moveToSubScreen(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v2, "moveToSubScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setMoveToScreen(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public static needListViewExpand(Landroid/app/Activity;)Z
    .locals 6

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isLandscape(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "SDualScreenUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needListViewExpand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeActivityMode(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-ne v1, p0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendBackPressed(Landroid/app/Activity;)V
    .locals 3

    const-string/jumbo v1, "SDualScreenUtil"

    const-string/jumbo v2, "sendBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.sub.backpressed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setActivityLMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getDualScreenActivtyStack()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setDualScreenMode(Z)V
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualScreenMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsDualScreenMode:Z

    return-void
.end method

.method public static setInitialActivityLaunch(Z)V
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsInitialActivityLaunched : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mIsInitialActivityLaunched:Z

    return-void
.end method

.method public static setMoveToScreen(Z)V
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMoveToScreen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v0, :cond_0

    sput-boolean p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mMoveToScreen:Z

    :cond_0
    return-void
.end method

.method public static setStackSync(Z)V
    .locals 3

    const-string/jumbo v0, "SDualScreenUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStackSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->mStackSync:Z

    return-void
.end method

.method private static shrinkScreen(Landroid/app/Activity;)V
    .locals 6

    sget-boolean v4, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SDualScreenUtil"

    const-string/jumbo v5, "shrinkScreen finish coupledactivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    :goto_0
    sget v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_SHRINK:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0
.end method

.method public static startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    sget-boolean v5, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->FeatureIsDualScreen:Z

    if-eqz v5, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setFinishWithCoupledTask(Z)V

    sget-object v5, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$1;->$SwitchMap$com$samsung$android$sdk$dualscreen$SDualScreenActivity$DualScreen:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    const-string/jumbo v5, "SDualScreenUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startState :: startDualActivity :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v5, "dual_view_next_state_name"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "start_dual_from_detail"

    invoke-virtual {p2, v5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-class v5, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_COUPLED_TASK:I

    invoke-static {p0, v3, v4, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    :try_start_0
    sget v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_EXPAND:I

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setDualScreenMode(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void

    :pswitch_0
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SDualScreenUtil"

    const-string/jumbo v6, "Activity Not Found !"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static startMainActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.changestate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "dual_view_next_state_name"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "SDualScreenUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeMainActivityState to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static startOtherActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startSubActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startMainActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static startSubActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.changestate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "dual_view_next_state_name"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "SDualScreenUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSubActivityState to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
