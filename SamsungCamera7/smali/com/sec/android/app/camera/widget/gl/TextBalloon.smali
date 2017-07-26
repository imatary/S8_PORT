.class public Lcom/sec/android/app/camera/widget/gl/TextBalloon;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "TextBalloon.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextBalloon"


# instance fields
.field private final BACKGROUND_PICKER_WIDTH:F

.field private final CLOSE_BUTTON_PADDING:F

.field private final DESCRIPTION_FONT_SIZE:F

.field private final DESCRIPTION_LINE_SPACING:F

.field private final SCREEN_HEIGHT:I

.field private final TITLE_BOTTOM_MARGIN:F

.field private final TITLE_FONT_SIZE:F

.field private mBottomMargin:F

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCloseButton:Lcom/samsung/android/glview/GLButton;

.field private mDescription:Lcom/samsung/android/glview/GLText;

.field private mLandscapeWidth:F

.field private mPickerPosX:F

.field private mPortraitWidth:F

.field protected mTextBalloonCloseButtonClickListener:Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;

.field private mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTitle:Lcom/samsung/android/glview/GLText;

.field private mViewGroupHeight:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V
    .locals 22

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->SCREEN_HEIGHT:I

    const v2, 0x7f0a03c8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_FONT_SIZE:F

    const v2, 0x7f0a03c7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_BOTTOM_MARGIN:F

    const v2, 0x7f0a03bc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_FONT_SIZE:F

    const v2, 0x7f0a03bd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_LINE_SPACING:F

    const v2, 0x7f0a03ba

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    const v2, 0x7f0a03c6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPortraitWidth:F

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPickerPosX:F

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mBottomMargin:F

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setNinePatchBackground(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->getPaddings()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020289

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v12, v2, v3

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    sub-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v12, v14, v2, v3}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v20

    move/from16 v0, v20

    int-to-float v2, v0

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v4, v20, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_BOTTOM_MARGIN:F

    add-float/2addr v2, v7

    add-float/2addr v2, v13

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_FONT_SIZE:F

    const v8, 0x7f0d0056

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v8, v21

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getTop()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->TITLE_BOTTOM_MARGIN:F

    add-float v11, v2, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->DESCRIPTION_FONT_SIZE:F

    const v2, 0x7f0d0056

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f090157

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TextBalloon;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPortraitWidth:F

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->CLOSE_BUTTON_PADDING:F

    add-float/2addr v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_2
.end method

.method public static isTextBalloonEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private refreshPosition(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->moveBaseLayoutAbsolute(FF)V

    return-void

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPortraitWidth:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setSize(FF)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPickerPosX:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->BACKGROUND_PICKER_WIDTH:F

    sub-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPortraitWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mBottomMargin:F

    sub-float v1, v2, v3

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setSize(FF)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPickerPosX:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    sub-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mBottomMargin:F

    sub-float v1, v2, v3

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setSize(FF)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mPickerPosX:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mLandscapeWidth:F

    sub-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mViewGroupHeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mBottomMargin:F

    sub-float v1, v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hideTextBalloon()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->refreshPosition(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public setCloseButtonClickListener(Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mTextBalloonCloseButtonClickListener:Lcom/sec/android/app/camera/widget/gl/TextBalloon$TextBalloonCloseButtonClickListener;

    return-void
.end method

.method public setTextBalloonEnabled(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p2, :cond_0

    const-string v0, "TextBalloon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextBalloonEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showTextBalloon()V
    .locals 11

    const v10, 0x7f0b001e

    const/4 v9, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isVisible()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Lcom/samsung/android/view/animation/Elastic40;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/Elastic40;-><init>()V

    const v2, 0x7f0b001f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v6

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v7

    move v2, v0

    move v3, v1

    move-object v4, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0b001d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineOut33;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->startAnimation()V

    :cond_0
    return-void
.end method
