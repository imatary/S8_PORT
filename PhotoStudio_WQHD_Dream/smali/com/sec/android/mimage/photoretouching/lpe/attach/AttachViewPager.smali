.class public Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AttachViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachViewPager"


# instance fields
.field private mPagingDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->mPagingDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->mPagingDisabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->mPagingDisabled:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->mPagingDisabled:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPagingDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->mPagingDisabled:Z

    return-void
.end method
