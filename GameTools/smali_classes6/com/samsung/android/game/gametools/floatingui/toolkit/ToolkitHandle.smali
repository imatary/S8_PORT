.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"


# static fields
.field public static final NO_ANIM:I = 0x14d

.field public static final SHOW_FIRST_ANIM:I = 0x6f

.field public static final SHOW_IMMEDIATE_ANIM:I = 0xde


# instance fields
.field private final HANDLE_HEIGHT:I

.field private final HANDLE_HEIGHT_HALF:I

.field private final HANDLE_WIDTH_OFFSET:I

.field private mContext:Landroid/content/Context;

.field private mHandleParams:Landroid/view/WindowManager$LayoutParams;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsViewAdded:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field private mResolution:Landroid/graphics/Point;

.field private mStatusBarOffset:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->initialize()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addViewToWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ToolkitHandle : addViewToWindow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "Toolkit Handle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCenterPosition()Landroid/graphics/Point;
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getHANDLE_HEIGHT()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    return v0
.end method

.method public getHANDLE_HEIGHT_HALF()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    return v0
.end method

.method public getHANDLE_WIDTH_OFFSET()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    return v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public inflate()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_handle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setParams()V

    return-void
.end method

.method public declared-synchronized isViewAdded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refinePosition(II)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    if-gez p2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    neg-int v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    neg-int v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_3
    return-object v0
.end method

.method public declared-synchronized removeViewFromWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V

    :cond_0
    const-string/jumbo v1, "ToolkitHandle : removeViewFromWindow"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V

    const-string/jumbo v1, "ToolkitHandle : removeViewFromWindow exception"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCenterPosition(II)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    return-void
.end method

.method public setParams()V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setPosition(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->updateView()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setResolution(Landroid/graphics/Point;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    return-void
.end method

.method public declared-synchronized setViewAdded(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
