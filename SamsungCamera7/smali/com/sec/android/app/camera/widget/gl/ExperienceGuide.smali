.class public Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ExperienceGuide.java"


# static fields
.field public static final DOWN:I = 0x3

.field private static final GUIDE_ALPHA_VALUE:F = 0.85f

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExperienceGuide"

.field public static final UNKNOWN_DIRECTION:I = 0x4

.field public static final UP:I = 0x2


# instance fields
.field private final ARROW_HEIGHT:F

.field private final ARROW_MARGIN:F

.field private final ARROW_WIDTH:F

.field private final BACKGROUND_DOWN_PADDING:F

.field private final BACKGROUND_UP_PADDING:F

.field private final BACKGROUND_WIDTH:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final BEAUTY_MENU_BUTTON_WIDTH:F

.field private final EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

.field private final EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TEXT_COLOR:I

.field private final TEXT_LINE_SPACING:F

.field private final TEXT_SIZE:F

.field private final TEXT_WIDTH:F

.field private final TITLE_FONT_SIZE:F

.field private mArrowDirection:[I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentOrientation:I

.field private mDescription:Ljava/lang/String;

.field private mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

.field private mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

.field private mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mLeft:F

.field private mTextHeight:F

.field private mTitle:Ljava/lang/String;

.field private mTop:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFFILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_HEIGHT:I

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BASEMENU_GROUP_WIDTH:F

    const v1, 0x7f0a0262

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BEAUTY_MENU_BUTTON_WIDTH:F

    const v1, 0x7f0a0323

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_WIDTH:F

    const v1, 0x7f0a0322

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    const v1, 0x7f0a0321

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    const v1, 0x7f0a0327

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    const v1, 0x7f0a0328

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

    const v1, 0x7f0a0324

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    const v1, 0x7f0a0325

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    const v1, 0x7f0a0326

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    const v1, 0x7f0d000e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    const v1, 0x7f0a031d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    const v1, 0x7f0a0320

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_WIDTH:F

    const v1, 0x7f0a031e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const v1, 0x7f0a031f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isExperienceGuideEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCurrentOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCurrentOrientation:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExperienceGuideEnabled(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p2, :cond_0

    const-string v0, "ExperienceGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExperienceGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aput p6, v2, p1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-static {v0, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-static {v0, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-static {v2, v0, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    add-int/lit8 v5, v17, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    :goto_0
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v2, v8, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v2, v8, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f020001

    const v5, 0x3f59999a    # 0.85f

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(IF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v5, v5, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/4 v8, 0x1

    const/high16 v9, 0x7f020000

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    aput-object v2, v10, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    const v4, 0x3f59999a    # 0.85f

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    invoke-virtual {v2, v12, v13}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v19, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    const/4 v11, 0x0

    move/from16 v7, v18

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v19, p1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v19, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v19, p1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BEAUTY_MENU_BUTTON_WIDTH:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    neg-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    sub-float v13, v2, v4

    goto/16 :goto_2

    :pswitch_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v2

    goto/16 :goto_2

    :pswitch_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v2

    const/4 v13, 0x0

    goto/16 :goto_2

    :pswitch_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    sub-float v13, v2, v4

    goto/16 :goto_2

    :pswitch_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
