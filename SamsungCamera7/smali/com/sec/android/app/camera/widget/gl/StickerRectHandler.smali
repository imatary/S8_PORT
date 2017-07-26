.class public Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "StickerRectHandler.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;,
        Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;,
        Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;,
        Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_HIDE_RECT_HANDLER:J = 0xbb8L

.field private static final HIDE_EDITABLE_TEXT_RECTANGLE_MSG:I = 0x1

.field private static final HIDE_RECT_HANDLER_TIMEOUT_MSG:I = 0x2

.field private static final KEY_STICKER_RECT_POSITION:Ljava/lang/String; = "pref_sticker_rect_position"

.field private static final LEFT_TOP_SCALE:I = 0x0

.field private static final MIN_DISTANCE:F = 10.0f

.field private static final RIGHT_BOTTOM_SCALE:I = 0x1

.field private static final SHOW_EDITABLE_TEXT_RECTANGLE_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StickerRectHandler"


# instance fields
.field private final BOUND_RECT_THICKNESS:I

.field private final HANDLE_SIZE:I

.field private final OUTER_BOUND_RECT_THICKNESS:I

.field private final RESIZE_HANDLE_SIZE:I

.field private final STICKER_RECT_DEFAULT_POSITION_BOTTOM_MARGIN:I

.field private final STICKER_RECT_DEFAULT_POSITION_LEFT_MARGIN:I

.field private final STICKER_RECT_MAX_SIZE:I

.field private final STICKER_RECT_MIN_SIZE:I

.field private mAspectRatio:F

.field private mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;

.field private mDensity:F

.field private mDragPoint:Landroid/graphics/Point;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDefaultPosition:Z

.field private mLResizeButton:Lcom/samsung/android/glview/GLButton;

.field private mLastestTaskExecutor:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

.field private mOrientation:I

.field private mOriginalRect:Landroid/graphics/Rect;

.field private mRResizeButton:Lcom/samsung/android/glview/GLButton;

.field private mRect:Landroid/graphics/Rect;

.field private mRotateButton:Lcom/samsung/android/glview/GLButton;

.field private mRotateDegree:I

.field private mRotateDegreeForOrientation:I

.field private mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

.field private mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

.field private mStickerType:I

.field private mTextInputIndex:I

.field private mTouchDownPoint:Landroid/graphics/Point;

.field private mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mWatermarkImageUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;

.field private mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

.field private mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

.field private mWatermarkText:[Ljava/lang/String;

.field private mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0a03a7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    const v0, 0x7f0a03a6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    const v0, 0x7f0a03a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->BOUND_RECT_THICKNESS:I

    const v0, 0x7f0a03a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    const v0, 0x7f0a03ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_DEFAULT_POSITION_LEFT_MARGIN:I

    const v0, 0x7f0a03aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_DEFAULT_POSITION_BOTTOM_MARGIN:I

    const v0, 0x7f0a03ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MIN_SIZE:I

    const v0, 0x7f0a0056

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MAX_SIZE:I

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTouchDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOriginalRect:Landroid/graphics/Rect;

    iput v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    iput v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    iput v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v11

    aput-object v3, v0, v12

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkText:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLRectangle;

    aput-object v3, v0, v11

    aput-object v3, v0, v12

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;-><init>(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v11}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0d0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v3

    const v6, 0x7f02024c

    move v3, v2

    move v7, v11

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v3

    const v6, 0x7f02024d

    move v3, v2

    move v7, v11

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v3

    const v6, 0x7f02024b

    move v3, v2

    move v7, v11

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v3

    const v6, 0x7f02024b

    move v3, v2

    move v7, v11

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v0, v0

    if-ge v9, v0, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f0d0059

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v2

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    aput-object v0, v10, v9

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLRectangle;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLRectangle;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLRectangle;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)[Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getWatermarkImage(ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkImageUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;

    return-object v0
.end method

.method private calcRectBoundary(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 12

    const/4 v11, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDefaultOrientation:I

    add-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x5a

    add-int v1, v7, p3

    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v1, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v4

    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v1, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v1, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v6

    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v1, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getControlAreaRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v5, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iput v11, v2, Landroid/graphics/Point;->x:I

    :cond_1
    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    iput v11, v2, Landroid/graphics/Point;->y:I

    :cond_3
    return-object v2
.end method

.method private checkRectBoundary(Landroid/graphics/Rect;Landroid/graphics/Point;I)Z
    .locals 10

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDefaultOrientation:I

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x5a

    add-int v1, v6, p3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v5

    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getControlAreaRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v3, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v2, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v4, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private getControlAreaRect()Landroid/graphics/Rect;
    .locals 9

    const v7, 0x7f0a0225

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    const v7, 0x7f0a0012

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v7, v4, :cond_0

    iget v2, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    add-int/2addr v2, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v8

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->right:I

    :goto_1
    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    sub-int/2addr v5, v7

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    add-int v6, v7, v8

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    sub-int v1, v7, v8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v6, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v7

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v7

    sub-int v5, v7, v0

    goto :goto_1
.end method

.method private getRotateAngle(II)I
    .locals 14

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    sub-int v4, p1, v10

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int v5, p2, v10

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    sub-int v8, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    sub-int v9, v10, v11

    int-to-double v10, v9

    int-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    int-to-double v10, v5

    int-to-double v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double v10, v0, v6

    const-wide v12, 0x4076800000000000L    # 360.0

    add-double/2addr v10, v12

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    packed-switch v10, :pswitch_data_0

    :goto_0
    double-to-int v10, v2

    return v10

    :pswitch_0
    const-wide v10, 0x4070e00000000000L    # 270.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_1
    const-wide v10, 0x4066800000000000L    # 180.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_2
    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v10, v2

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v2, v10, v12

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStickerEffectParameterString(IIIII)Ljava/lang/String;
    .locals 8

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v3

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "stamp,left=%d,top=%d,right=%d,bottom=%d,rotate=%d,surfaceWidth=%d,surfaceHeight=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    add-int v7, p1, p3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    add-int v7, p2, p4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getWatermarkImage(ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;
    .locals 16

    const/high16 v8, 0x3f800000    # 1.0f

    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v13, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceId:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v1, v1

    if-ge v12, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkText:[Ljava/lang/String;

    aget-object v3, v3, v12

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    aget-object v4, v4, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->drawText(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->captureResourceId:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v8, v8}, Lcom/sec/android/app/camera/util/Util;->getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v10, v1, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v1, 0x0

    array-length v3, v9

    invoke-static {v9, v1, v3, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    :cond_3
    if-eqz v14, :cond_4

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    return-object v10

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    const-string v1, "StickerRectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWatermarkImage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    :goto_3
    if-eqz v14, :cond_6

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :goto_4
    :try_start_7
    throw v1

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_3
.end method

.method private growBy(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDefaultOrientation:I

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x4

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x5a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v2

    if-ne p2, v8, :cond_2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_0
    if-ne p2, v8, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    if-nez p2, :cond_4

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    div-float v4, v0, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-object p1

    :cond_2
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    div-float v4, v0, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMultiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_5
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1
.end method

.method private move(Landroid/graphics/Point;)V
    .locals 7

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v0

    invoke-direct {p0, v6, p1, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->calcRectBoundary(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v0, v5

    rem-int/lit16 v5, v0, 0x168

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setPosition(IIIII)V

    return-void
.end method

.method private relocatePosition()V
    .locals 22

    const-string v2, "StickerRectHandler"

    const-string v3, "relocatePosition"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const v2, 0x7f0a0225

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    const v2, 0x7f0a0012

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v16

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-lt v2, v0, :cond_5

    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    add-int/2addr v15, v2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    sub-int/2addr v3, v8

    if-gt v2, v3, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    sub-int v19, v19, v2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    add-int v21, v2, v3

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->RESIZE_HANDLE_SIZE:I

    sub-int v9, v2, v3

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v10, v15, v0, v1, v9}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v3

    if-gt v2, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v2

    const/16 v3, 0x13b

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v2, v3

    :cond_1
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v14, v2, v3

    :cond_2
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v12, v2, v3

    :cond_3
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    sub-int v13, v2, v3

    :cond_4
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v12

    sub-int/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    sub-int/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v12

    sub-int/2addr v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v2, v7

    rem-int/lit16 v7, v2, 0x168

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setPosition(IIIII)V

    return-void

    :cond_5
    move/from16 v15, v17

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    sub-int v19, v2, v8

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v3

    if-gt v2, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v2

    const/16 v3, 0x13b

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2
.end method

.method private resize(I)V
    .locals 7

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v6, p1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->growBy(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MIN_SIZE:I

    if-lt v0, v1, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MAX_SIZE:I

    if-gt v0, v1, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MIN_SIZE:I

    if-lt v0, v1, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_MAX_SIZE:I

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateDegree()I

    move-result v1

    invoke-direct {p0, v6, v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->checkRectBoundary(Landroid/graphics/Rect;Landroid/graphics/Point;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v0, v5

    rem-int/lit16 v5, v0, 0x168

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setPosition(IIIII)V

    goto :goto_0
.end method

.method private restartHideRectHandlerTimer()V
    .locals 5

    const/4 v4, 0x2

    const-string v0, "StickerRectHandler"

    const-string v1, "restartHideRectHandlerTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setDefaultWatermarkText([Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textWidth:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textHeight:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkText:[Ljava/lang/String;

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textType:I

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->defaultText:Ljava/lang/String;

    :goto_2
    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    aget-object v3, p1, v0

    iget v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textTop:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v2, v3

    aget-object v3, p1, v0

    iget v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    move-result-object v1

    aget-object v3, p1, v0

    iget v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textType:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getWatermarkText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setPosition(IIIII)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setSize(FF)V

    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    int-to-float v3, p2

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8, v8}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    int-to-float v3, p3

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    int-to-float v3, p4

    invoke-virtual {v2, v8, v3}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_sticker_rect_position"

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    if-eqz v2, :cond_1

    int-to-float v2, p3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOriginalRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textLeft:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v4, v4, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textTop:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->HANDLE_SIZE:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v4, v4, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textHeight:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getStickerEffectParameterString(IIIII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;->onStickerCoordinateUpdate(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private shutdownUpdateWatermarkCaptureImageThreadPool()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "StickerRectHandler"

    const-string v3, "awaitTermination of UpdateWatermarkCaptureImageThreadPool interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startEditableTextRectangleTimer()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopEditableTextRectangleTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopHideRectHandlerTimer()V
    .locals 2

    const-string v0, "StickerRectHandler"

    const-string v1, "stopHideRectHandlerTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateWatermarkImage()V
    .locals 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const-string v0, "StickerRectHandler"

    const-string v1, "updateWatermarkImage start"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getWatermarkImage(ILcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkImageUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-interface {v0, v5, v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;->onWatermarkImageUpdate(ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mUpdateWatermarkCaptureImageThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLastestTaskExecutor:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLastestTaskExecutor:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$2;-><init>(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->stopEditableTextRectangleTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public hideRectHandler(Z)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v1, "StickerRectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideRectHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->stopHideRectHandlerTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->stopEditableTextRectangleTimer()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->shutdownUpdateWatermarkCaptureImageThreadPool()V

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mIsDefaultPosition:Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "StickerRectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOrientation:I

    mul-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->relocatePosition()V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v13, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTouchDownPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Point;->set(II)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->stopHideRectHandlerTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "9033"

    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    array-length v1, v1

    if-ge v10, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    aget-object v1, v1, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "5034"

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const-string v1, "9032"

    :goto_4
    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "5033"

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getRotateAngle(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->checkRectBoundary(Landroid/graphics/Rect;Landroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->rotateDegree(I)V

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v1, v6

    rem-int/lit16 v6, v1, 0x168

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->getStickerEffectParameterString(IIIII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;->onStickerCoordinateUpdate(Ljava/lang/String;)V

    :cond_7
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Point;->set(II)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->resize(I)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Point;->set(II)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->resize(I)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, v13, v1

    iput v1, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v14, v1

    iput v1, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDragPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->move(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTouchDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTouchDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    :cond_d
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;->onDeleteClick()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    const-string v1, "9031"

    :goto_6
    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_e
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_f
    const-string v1, "5032"

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->showSticker(Z)V

    goto :goto_7

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->restartHideRectHandlerTimer()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "9034"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.WatermarkTextInputActivity"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OriString"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkText:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x7ec

    invoke-virtual {v1, v11, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v9

    const-string v1, "StickerRectHandler"

    const-string v2, "Activity is not found"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDefaultPosition(II)V
    .locals 11

    const/4 v10, 0x3

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v0, 0x7f0a0225

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v8

    instance-of v0, v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceWidth:I

    int-to-float v0, v0

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v0, v5

    float-to-int v3, v0

    check-cast v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;

    iget v0, v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceHeight:I

    int-to-float v0, v0

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v0, v5

    float-to-int v4, v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->rotateDegree(I)V

    int-to-float v0, v3

    int-to-float v5, v4

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mAspectRatio:F

    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-lt v0, v7, :cond_5

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_DEFAULT_POSITION_LEFT_MARGIN:I

    add-int v1, v0, v5

    :goto_2
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_DEFAULT_POSITION_BOTTOM_MARGIN:I

    sub-int/2addr v0, v5

    sub-int v2, v0, v4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mOriginalRect:Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v9, v2, v4

    invoke-virtual {v0, v1, v2, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v0, v5

    rem-int/lit16 v5, v0, 0x168

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setPosition(IIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->relocatePosition()V

    if-ne p2, v10, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->updateWatermarkImage()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mIsDefaultPosition:Z

    goto :goto_0

    :cond_4
    if-ne p2, v10, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v8

    instance-of v0, v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    if-eqz v0, :cond_2

    check-cast v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iput-object v8, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceWidth:I

    int-to-float v0, v0

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v0, v5

    float-to-int v3, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceHeight:I

    int-to-float v0, v0

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDensity:F

    mul-float/2addr v0, v5

    float-to-int v4, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkInfo:Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;

    iget-object v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setDefaultWatermarkText([Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->STICKER_RECT_DEFAULT_POSITION_LEFT_MARGIN:I

    add-int v1, v7, v0

    goto :goto_2
.end method

.method public setDeleteClickListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;

    return-void
.end method

.method public setStickerCoordinateUpdateListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerCoordinateUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;

    return-void
.end method

.method public setWatermarkUpdateListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkImageUpdateListener:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;

    return-void
.end method

.method public showSticker(Z)V
    .locals 8

    const/4 v3, -0x1

    const/4 v7, 0x0

    const-string v0, "StickerRectHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSticker : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mLResizeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->restartHideRectHandlerTimer()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerTouchOverlay:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mStickerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkInputText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkText:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    aput-object v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkInputText(Ljava/lang/String;)V

    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mTextInputIndex:I

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mIsDefaultPosition:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->startEditableTextRectangleTimer()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegreeForOrientation:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mRotateDegree:I

    add-int/2addr v0, v5

    rem-int/lit16 v5, v0, 0x168

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setPosition(IIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->relocatePosition()V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mIsDefaultPosition:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->updateWatermarkImage()V

    goto :goto_0
.end method
