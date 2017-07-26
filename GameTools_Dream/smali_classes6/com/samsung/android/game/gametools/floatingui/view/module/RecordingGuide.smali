.class public Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;
.super Ljava/lang/Object;
.source "RecordingGuide.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuideParams:Landroid/view/WindowManager$LayoutParams;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsNoFloating:Z

.field private mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mListener:Landroid/view/View$OnClickListener;

    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mIsNoFloating:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->initialize()V

    return-void
.end method


# virtual methods
.method public addLayoutToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "Recording Guide"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method bindListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getLayout()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public inflate()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mIsNoFloating:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_none_recording_guide_port:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_recording_guide_port:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_recording_guide_land:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->setParams()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->addLayoutToWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeLayoutFromWindow()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

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

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->bindListener()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->removeLayoutFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->bindListener()V

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

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mGuideParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
