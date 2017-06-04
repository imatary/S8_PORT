.class public Lcom/sec/android/gallery3d/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field public static final KEY_BUNDLE:Ljava/lang/String; = "status_proxy"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_IS_ALLVIEW:Ljava/lang/String; = "is_allview"

.field private static final KEY_IS_FROM_CAMERA:Ljava/lang/String; = "is_from_camera"

.field private static final KEY_IS_FROM_MESSAGE:Ljava/lang/String; = "is_from_message"

.field private static final KEY_IS_FROM_MYFILES:Ljava/lang/String; = "is_from_myfiles"

.field public static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field private static final TAB_TYPE:Ljava/lang/String; = "tab_type"

.field private static final TAG:Ljava/lang/String; = "StateManager"

.field private static final UPBUTTON_VISIBILITY:Ljava/lang/String; = "upbutton_visibility"

.field private static final VIEW_BY_TYPE:Ljava/lang/String; = "view_by_type"


# instance fields
.field final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsInMultiWindowMode:Z

.field mIsResumed:Z

.field private mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

.field final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/StateManager;->initDualScreen()V

    :cond_0
    return-void
.end method

.method private finishState(Lcom/sec/android/gallery3d/app/ActivityState;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "finish is rejected, keep the last state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "StateManager"

    const-string/jumbo v4, "no more state, finish activity"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "There is no state to be finished in the stack"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finishState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-eq p1, v2, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "The state is already destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iput-boolean v6, p1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v6, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    :cond_8
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    goto/16 :goto_0

    :cond_9
    move-object v1, v3

    goto :goto_1
.end method

.method private initDualScreen()V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getActivityLaunchMode(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getCoupledActivity(Landroid/app/Activity;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setStackSync(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/StateManager;->syncStackFromSrc(Lcom/sec/android/gallery3d/app/StateManager;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setStackSync(Z)V

    :cond_0
    return-void
.end method

.method private pushStateAtBottom(Lcom/sec/android/gallery3d/app/ActivityState;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "StateManager"

    const-string/jumbo v5, "pushStateAtBottom"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v4, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v5, p2, v2}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isStackSyncing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v6, v2, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v6, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v4, v6}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public changeDataFromOtherActivity(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->updateDualScreenFocus(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public changeStateFromOtherActivity(Landroid/os/Bundle;)V
    .locals 12

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changeStateFromOtherActivity SDualScreenUtil.isDualScreenMode()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v5, v8}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0, v8}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->isResumed(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changeStateFromOtherActivity isPaused"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "intent.stop.app-in-app"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "stopFrom"

    const-string/jumbo v11, "Gallery"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishActivity(Landroid/app/Activity;I)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->moveActivityToFront(Landroid/app/Activity;)V

    :cond_2
    const-string/jumbo v8, "StateManager"

    const-string/jumbo v9, "changeStateFromOtherActivity Good to Go"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "dual_view_next_state_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-nez v8, :cond_3

    const-string/jumbo v8, "switch_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "switch_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isSameMediaSetPath(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v8, :cond_5

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setCurrentPhotoByData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "StateManager"

    const-string/jumbo v9, "onReceive :: ClassNotFoundException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ClassNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :try_start_1
    iget-boolean v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v8, :cond_6

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setCurrentSetByData(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x1

    :cond_7
    if-nez v4, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changeStateFromOtherActivity switchState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changeStateFromOtherActivity startState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onResume()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method contextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onContextItemSelected(Landroid/view/MenuItem;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createContextMenu(Landroid/view/ContextMenu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const-string/jumbo v0, "StateManager"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public finishAllViewState()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;Z)V

    return-void
.end method

.method public getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    goto :goto_0
.end method

.method public getStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getStateCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getTopState()Lcom/sec/android/gallery3d/app/ActivityState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    goto :goto_0
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onBackPressed()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->sendBackPressed(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onDisplayAdded(I)V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onDisplayChanged(I)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onDisplayRemoved(I)V

    :cond_0
    return-void
.end method

.method public onMWLayoutChanged()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "getTopState() returns null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onMWLayoutChanged()V

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "getTopState() returns null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsInMultiWindowMode:Z

    if-eq v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->isWindowModeChanged(Z)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onMultiWindowModeChanged(Z)V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsInMultiWindowMode:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->pause()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->resume()V

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->isWindowModeChanged(Z)V

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsInMultiWindowMode:Z

    :cond_4
    return-void
.end method

.method public onPostCreate()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    invoke-static {}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setsIsTallCategoryLanguage()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "StateManager"

    const-string/jumbo v1, "Pause is called again before calling the resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->pause()V

    goto :goto_0
.end method

.method public permissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onPrepareOptionMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushStateAtBottom(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "StateManager"

    const-string/jumbo v4, "pushStateAtBottom"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v1}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_1
    return-void
.end method

.method resetSortByFilterType(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq p1, v2, :cond_3

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-eq p1, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-eqz v2, :cond_1

    :cond_0
    const-class v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->setSortByType(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 24

    const-string/jumbo v19, "StateManager"

    const-string/jumbo v20, "restoreFromState"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "is_allview"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v19

    const-string/jumbo v20, "START_GALLERY_VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v19, "status_proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string/jumbo v19, "tab_type"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v19, "launch_mode"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/core/LaunchModeType;

    const-string/jumbo v19, "view_by_type"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    const-string/jumbo v19, "upbutton_visibility"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    const-string/jumbo v19, "filter_type"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    const/4 v12, 0x0

    const-string/jumbo v19, "is_from_camera"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string/jumbo v19, "is_from_camera"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    :cond_2
    const/4 v14, 0x0

    const-string/jumbo v19, "is_from_myfiles"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const-string/jumbo v19, "is_from_myfiles"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :cond_3
    const/4 v13, 0x0

    const-string/jumbo v19, "is_from_message"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const-string/jumbo v19, "is_from_message"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    if-eqz v15, :cond_5

    invoke-virtual {v6, v15}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v6, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    :cond_9
    invoke-virtual {v6, v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    invoke-virtual {v6, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromMyFiles(Z)V

    invoke-virtual {v6, v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromMMS(Z)V

    :cond_a
    const-string/jumbo v19, "activity-state"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v11, v10, v19

    move-object v3, v11

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v21, "class"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    const-string/jumbo v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :try_start_0
    const-string/jumbo v21, "StateManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restoreFromState "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v16

    sget-object v21, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    const-class v21, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v7}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v2, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    move-object/from16 v21, v0

    new-instance v22, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    move-object/from16 v0, v22

    invoke-direct {v0, v7, v2}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    new-instance v19, Ljava/lang/AssertionError;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    :cond_c
    sget-object v21, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    const-class v21, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    goto :goto_1

    :cond_d
    sget-object v21, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    const-class v21, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "StateManager"

    const-string/jumbo v2, "Resume is called again before calling the pause"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iput-boolean v3, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/StateManager;->mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setResumeStateThroughActivityLifeCycle(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mPausedActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setResumeStateThroughActivityLifeCycle(Z)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v7, "StateManager"

    const-string/jumbo v8, "saveState"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "tab_type"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "launch_mode"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "view_by_type"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "upbutton_visibility"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isUpButtonVisible()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "filter_type"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "is_from_camera"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "is_from_myfiles"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMyFiles()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "is_from_message"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMMS()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "status_proxy"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v8, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.sec.samsung.gallery.view.allview.AllViewState"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "is_allview"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "class"

    iget-object v9, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v8, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v9, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    const-string/jumbo v8, "data"

    iget-object v9, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "bundle"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v8, "StateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, 0x1

    aput-object v0, v5, v3

    move v3, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "activity-state"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    iget-object v3, v2, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->pause()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v1}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isExpandableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startState :: startOtherActivityState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startOtherActivityState(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isExpandableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startState :: changeSubActivityState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public switchState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchState to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v3, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->resetSortByFilterType(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v2}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activity.isFinishing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EmptyStackException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public syncStackFromSrc(Lcom/sec/android/gallery3d/app/StateManager;)V
    .locals 7

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "StateManager"

    const-string/jumbo v6, "DualScreen syncStackFrom Critical Error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/StateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v5, :cond_3

    :goto_0
    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v6, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Lcom/sec/android/gallery3d/app/ActivityState;Landroid/os/Bundle;)V

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    :cond_2
    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "dual_view_next_state_name"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "dual_view_next_state_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v1

    :cond_4
    :goto_1
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v6, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Lcom/sec/android/gallery3d/app/ActivityState;Landroid/os/Bundle;)V

    :cond_5
    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    iget-object v5, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    :cond_6
    iget-object v5, p1, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public windowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
