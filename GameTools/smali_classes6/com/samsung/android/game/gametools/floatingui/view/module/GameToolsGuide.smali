.class public Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
.super Ljava/lang/Object;
.source "GameToolsGuide.java"


# static fields
.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameMode:Z

.field private mGuideParams:Landroid/view/WindowManager$LayoutParams;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mTextCancel:Landroid/widget/Button;

.field private mTextEnable:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGameMode:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->initialize()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    .locals 3

    const-class v1, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->refreshContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private refreshContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addLayoutToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "GameTools Guide"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method bindListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mTextEnable:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mTextCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayout()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->removeLayoutFromWindow()V

    return-void
.end method

.method public inflate()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mOrientation:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_gametools_guide_port:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_enable:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mTextEnable:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mTextCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_detail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BODY_PS_IS_A_BUTTON_FLOATING_OVER_THE_TOP_OF_YOUR_GAME_THAT_PROVIDES_CONVENIENT_GAME_FEATURES:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_gametools_guide_land:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->setParams()V

    return-void
.end method

.method public removeLayoutFromWindow()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGameMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGameMode:Z

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->bindListener()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->removeLayoutFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->bindListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->show()V

    :cond_0
    return-void
.end method

.method public setParams()V
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/16 v4, 0x628

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGameMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_enable:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_OK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->addLayoutToWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_enable:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_ENABLE_ABB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
