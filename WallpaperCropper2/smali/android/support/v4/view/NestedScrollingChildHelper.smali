.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_4

    :cond_2
    if-nez p4, :cond_5

    move v2, v0

    move v3, v0

    :goto_1
    if-eqz p3, :cond_6

    :goto_2
    aput v0, p3, v0

    aput v0, p3, v1

    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    if-nez p4, :cond_8

    :goto_3
    aget v2, p3, v0

    if-eqz v2, :cond_9

    :cond_3
    move v0, v1

    :goto_4
    return v0

    :cond_4
    if-nez p2, :cond_2

    if-eqz p4, :cond_0

    aput v0, p4, v0

    aput v0, p4, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v0

    aget v2, p4, v1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-eqz v4, :cond_7

    :goto_5
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    goto :goto_5

    :cond_8
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p4, v0

    sub-int v3, v4, v3

    aput v3, p4, v0

    aget v3, p4, v1

    sub-int v2, v3, v2

    aput v2, p4, v1

    goto :goto_3

    :cond_9
    aget v2, p3, v1

    if-nez v2, :cond_3

    goto :goto_4
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_2
    if-nez p5, :cond_4

    move v6, v7

    move v8, v7

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    if-nez p5, :cond_5

    :goto_2
    return v9

    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-eqz p5, :cond_0

    aput v7, p5, v7

    aput v7, p5, v9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, p5, v7

    aget v0, p5, v9

    move v6, v0

    move v8, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p5, v7

    sub-int/2addr v0, v8

    aput v0, p5, v7

    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    goto :goto_2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return v3

    :cond_1
    return v4

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_4

    :goto_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return v4

    :cond_4
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method public stopNestedScroll()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    goto :goto_0
.end method
