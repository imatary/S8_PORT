.class public Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.super Landroid/app/Fragment;
.source "RclExpansionFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;
    }
.end annotation


# static fields
.field public static final EXPANSION_ADJUST_PAN:I = 0x2

.field public static final EXPANSION_ADJUST_RESIZE:I = 0x1

.field public static final EXPANSION_ADJUST_UNSPECIFIED:I = 0x0

.field public static final EXPANSION_HEIGHT_AUTO:I = -0x1

.field public static final EXPANSION_HEIGHT_MAX:I = -0x2


# instance fields
.field private mExpansionEnabled:Z

.field private mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field private mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

.field private mIsExpanded:Z

.field private mMaxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mMaxHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    new-instance v0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-direct {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-object v0
.end method


# virtual methods
.method public disableExpansion()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->disable()V

    return-void
.end method

.method public enableExpansion(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->enableExpansion(III)V

    return-void
.end method

.method public enableExpansion(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnExpansionStatusListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or ParentFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnExpansionStatusListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight can not be bigger than maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x2

    if-lt p2, v0, :cond_3

    const/4 v0, -0x1

    if-ge p3, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not allow negative numbers as height parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->enable(III)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansionStatusListener(Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setActivity(Landroid/app/Activity;)V

    :cond_5
    return-void
.end method

.method public enableFlickToClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->enableFlingToClose(Z)V

    return-void
.end method

.method public enableFlingToClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->enableFlingToClose(Z)V

    return-void
.end method

.method protected final getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mIsExpanded:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "$expansionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->enable(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansionStatusListener(Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnExpansionStatusListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either Activity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or ParentFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must implement OnExpansionStatusListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final onClose()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionClose()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;->onClose(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, -0x1

    new-instance v1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setRootView(Landroid/view/View;)V

    :cond_0
    return-object v1
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->disable()V

    return-void
.end method

.method protected onExpansionClose()V
    .locals 0

    return-void
.end method

.method protected onExpansionFinish(Z)V
    .locals 0

    return-void
.end method

.method protected onExpansionMaxHeightChanged(I)V
    .locals 0

    return-void
.end method

.method protected onExpansionProgress(I)V
    .locals 0

    return-void
.end method

.method protected onExpansionStart(Z)V
    .locals 0

    return-void
.end method

.method public final onFinish(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionFinish(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;->onFinish(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onMaxHeightChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionMaxHeightChanged(I)V

    return-void
.end method

.method public final onProgress(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;->onProgress(Ljava/lang/Object;I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "$expansionEnabled"

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionStart(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;->onStart(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setExpansion(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mIsExpanded:Z

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionStart(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionFinish(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected setExpansionInternal(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->requestExpansion(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mIsExpanded:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setExpansionMode(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid expansion mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expansion is disabled."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansionMode(I)V

    return-void
.end method

.method public setFixedHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setFixedHeight(I)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionMaxHeightChanged(I)V

    return-void
.end method

.method public unlock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    return-void
.end method
