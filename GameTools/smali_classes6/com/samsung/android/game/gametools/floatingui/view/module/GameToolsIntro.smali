.class public Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
.super Ljava/lang/Object;
.source "GameToolsIntro.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameToolsGuide"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntroParams:Landroid/view/WindowManager$LayoutParams;

.field private mIsViewAdded:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->initialize()V

    return-void
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 5

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIntroParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "GameTools Intro"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    const-string/jumbo v0, "GameToolsGuide"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->ll_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->removeLayoutFromWindow()V

    return-void
.end method

.method public inflate()V
    .locals 6

    const-string/jumbo v2, "GameToolsGuide"

    const-string/jumbo v3, "inflate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_handle:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4048000000000000L    # 48.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    const-string/jumbo v0, "GameToolsGuide"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->setParams()V

    return-void
.end method

.method public removeLayoutFromWindow()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIsViewAdded:Z

    goto :goto_0
.end method

.method public setParams()V
    .locals 6

    const/4 v1, -0x1

    const-string/jumbo v0, "GameToolsGuide"

    const-string/jumbo v2, "setParams"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x1000608

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIntroParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIntroParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->resolveLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIntroParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public show()V
    .locals 3

    const-string/jumbo v0, "GameToolsGuide"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->addViewToWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mIntroParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
