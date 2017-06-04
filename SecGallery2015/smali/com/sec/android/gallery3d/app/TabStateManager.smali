.class public Lcom/sec/android/gallery3d/app/TabStateManager;
.super Lcom/sec/android/gallery3d/app/StateManager;
.source "TabStateManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TabStateManager"


# instance fields
.field private mIsTabTransition:Z

.field private final mTabViewStateHolder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTgtTabPosition:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/StateManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    iput v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTgtTabPosition:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    return-void
.end method

.method private contextualLoggingForSwipe(II)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    const-string/jumbo v0, "From Pictures to Albums"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "CVTS"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    const-string/jumbo v0, "From Albums to Pictures"

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    const-string/jumbo v0, "From Albums to Stories"

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    const-string/jumbo v0, "From Stories to Albums"

    goto :goto_0
.end method

.method private samsungAnalyticsLoggingForSwipe(II)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-le p1, p2, :cond_2

    const-string/jumbo v0, "1021"

    :goto_1
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_0

    const-string/jumbo v0, "1020"

    goto :goto_1
.end method


# virtual methods
.method public disengageState(II)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "TabStateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TABSWIPE_ disengageState start srcPos ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "], tgtPos ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-nez v7, :cond_0

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Top state is not instanceof TabActivityState, getTopState()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x4

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/ActivityState;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    if-ge v2, v7, :cond_3

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Resumed ActivityState is only one. isResumeStateNum ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "activity.isFinishing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EmptyStackException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v4, 0x4

    :goto_2
    if-ge v1, v4, :cond_5

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-eq v1, p2, :cond_4

    if-eqz v5, :cond_4

    iget-object v7, v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/ActivityState;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/app/ActivityState;->setDisengageMode(Z)V

    iget-object v7, v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, v6, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    check-cast v7, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-ne p1, p2, :cond_8

    :goto_3
    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/TabActivityState;->setRootLayer(Z)V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, p2, :cond_7

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_7
    iget-object v7, v6, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    instance-of v7, v7, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-nez v7, :cond_9

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TABSWIPE_ disengageState fail ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Invalid ActivityState"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    move v8, v9

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v7, "TabStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ClassCastException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iput-boolean v9, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/TabStateManager;->contextualLoggingForSwipe(II)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/TabStateManager;->samsungAnalyticsLoggingForSwipe(II)V

    const-string/jumbo v7, "TabStateManager"

    const-string/jumbo v8, "TABSWIPE_ disengageState end"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public engageState(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x1

    const-string/jumbo v3, "TabStateManager"

    const-string/jumbo v4, "TABSWIPE_ engageState start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v2, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    :cond_0
    :goto_0
    iput p3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTgtTabPosition:I

    instance-of v3, v0, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-nez v3, :cond_2

    const-string/jumbo v3, "TabStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TABSWIPE_ engageState fail ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Invalid ActivityState"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/TabStateManager;->resetSortByFilterType(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v3, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    new-instance v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v0}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    iput-boolean v5, v0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_2
    const-string/jumbo v3, "TabStateManager"

    const-string/jumbo v4, "TABSWIPE_ engageState end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTabState(I)Lcom/sec/android/gallery3d/app/TabActivityState;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-nez v2, :cond_2

    const-string/jumbo v2, "TabStateManager"

    const-string/jumbo v3, "TABSWIPE_ getTabState() : No TabActivityState object. Please check mTabViewStateHolder add logic"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid ActivityState"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v0, Lcom/sec/android/gallery3d/app/TabActivityState;

    goto :goto_0
.end method

.method public isTabTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isInMultiPickMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_0
    return-void
.end method

.method public onTabSpecsChanged()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 7

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsTabTransition:Z

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x4

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/ActivityState;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v6, v3, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v4

    check-cast v3, Lcom/sec/android/gallery3d/app/TabActivityState;

    iget v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTgtTabPosition:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/app/TabActivityState;->destroyCurrentViewInUIThread(II)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/StateManager;->pause()V

    return-void
.end method

.method public resume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/StateManager;->resume()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isInMultiPickMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTabState(Lcom/sec/android/gallery3d/app/TabActivityState;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v1, p2, p1}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 10
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

    const/4 v9, 0x1

    const-string/jumbo v6, "TabStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/TabStateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    iget-object v6, v5, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    instance-of v6, v5, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    move-object v6, v5

    check-cast v6, Lcom/sec/android/gallery3d/app/TabActivityState;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/TabActivityState;->isTabEnabledActivityState()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mTabViewStateHolder:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-eqz v0, :cond_1

    if-eq v5, v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->pause()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsResumed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/ActivityState;->pause()V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v6, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mStack:Ljava/util/Stack;

    new-instance v7, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v7, p2, v3}, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v9, v3, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/app/TabStateManager;->mIsResumed:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->resume()V

    :cond_4
    return-void
.end method
