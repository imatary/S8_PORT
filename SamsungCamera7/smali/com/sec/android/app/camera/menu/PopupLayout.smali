.class public Lcom/sec/android/app/camera/menu/PopupLayout;
.super Ljava/lang/Object;
.source "PopupLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PopupLayoutController;


# static fields
.field private static final EXPERIENCE_GUIDE_AUTO_FOCUS_DURATION:I = 0xbb8

.field protected static final TAG:Ljava/lang/String; = "PopupLayout"


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final EXPERIENCE_BACKGROUND_WIDTH:F

.field private KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

.field private KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

.field private KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final POPUP_GROUP_RIGHT_GAP:F

.field private final RECORDING_BUTTON_WIDTH:F

.field private final REVIEW_HIDE_ANIMATION_DURATION:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

.field private final VIDEO_PREVIEW_POPUP_WIDTH:F

.field private final VISION_INTELLIGENCE_BUTTON_POS_X:I

.field private final VISION_INTELLIGENCE_POPUP_WIDTH:F

.field private final VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPopupIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;",
            ">;"
        }
    .end annotation
.end field

.field private mReview:Lcom/sec/android/app/camera/menu/Review;

.field private mReviewShowing:Z

.field private mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

.field private mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V
    .locals 6

    const v1, 0x7f0a0012

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    const v0, 0x7f0a005e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_WIDTH:F

    const v0, 0x7f0a005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

    const v0, 0x7f0a03e6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_POPUP_WIDTH:F

    const v0, 0x7f0a03e7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

    const v0, 0x7f0a03c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    const v0, 0x7f0a02a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->RECORDING_BUTTON_WIDTH:F

    const v0, 0x7f0a0323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a0262

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    const v0, 0x7f0b0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->REVIEW_HIDE_ANIMATION_DURATION:I

    const-string v0, "pref_global_vision_intelligence_effect_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    const-string v0, "pref_global_recording_preview_guide_popup_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    const-string v0, "pref_global_experience_guide_auto_focus_popup_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/PopupLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/PopupLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    return-object v0
.end method

.method private createExperienceGuideAutoFocusPopup()V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GUIDE_TEXT_FOR_AUTO_FOCUS:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float v10, v0, v1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v3, v10

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v6, 0x0

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f09016b

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFFILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v10

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private createVideoPreviewPopup()V
    .locals 12

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float v9, v0, v2

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    add-float v11, v0, v9

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    add-float v10, v11, v0

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    sub-float v4, v10, v0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_WIDTH:F

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

    const v6, 0x7f090200

    const v7, 0x7f0901ff

    const v8, 0x7f0201f1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createVisionIntelligencePopup()V
    .locals 9

    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    sub-float v4, v0, v1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_POPUP_WIDTH:F

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

    const v6, 0x7f090283

    const v7, 0x7f090282

    const v8, 0x7f0201f0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    :cond_0
    return-void
.end method

.method public hideAllPopup()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->hideTextBalloon()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->hideTextBalloon()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideReview(Z)V
    .locals 3

    const-string v1, "PopupLayout"

    const-string v2, "hideReview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->removeReviewTimeOutCallback()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->cancelAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->hideReview()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->REVIEW_HIDE_ANIMATION_DURATION:I

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$1;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/Review;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->startAnimation()V

    goto :goto_1
.end method

.method public isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isTextBalloonEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isTextBalloonEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->isExperienceGuideEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isReviewShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return v0
.end method

.method public isReviewUpdating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->isReviewUpdating()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareViaWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->hideAllPopup()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setExperienceGuideEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->showTextBalloon()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->showTextBalloon()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$2;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "PopupLayout"

    const-string v1, "showReview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string v0, "PopupLayout"

    const-string v1, "bitmap is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getZorderOnTop()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v0

    if-eq v1, v0, :cond_2

    const-string v0, "PopupLayout"

    const-string v1, "showReview : ignore showReview because another menu is showing now"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->isReviewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/menu/Review;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/menu/Review;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Review;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/menu/Review;->updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$3;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Review;->setReviewButtonListener(Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->startShowReviewAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendCompletedMessageToBixby()V

    goto :goto_0
.end method

.method public startShareViaAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->removeReviewTimeOutCallback()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->startShareViaAnimation()V

    :cond_0
    return-void
.end method
