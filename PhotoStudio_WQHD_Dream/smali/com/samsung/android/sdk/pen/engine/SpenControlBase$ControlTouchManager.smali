.class public Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ControlTouchManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;,
        Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field private static final OBJECT_LINE_FIND_THRESHOLD:I = 0x46

.field private static final PRIORITY_TOUCH_ZONE_CONTROL:I = 0x4

.field private static final PRIORITY_TOUCH_ZONE_MOVE:I = 0x1

.field private static final PRIORITY_TOUCH_ZONE_RESIZE:I = 0x2

.field private static final PRIORITY_TOUCH_ZONE_ROTATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ControlTouchManager"

.field public static final TOUCH_ZONE_BOTTOM:I = 0x7

.field public static final TOUCH_ZONE_BOTTOM_LEFT:I = 0x6

.field public static final TOUCH_ZONE_BOTTOM_RIGHT:I = 0x8

.field public static final TOUCH_ZONE_CENTER:I = 0xa

.field public static final TOUCH_ZONE_CONTROL:I = 0xb

.field public static final TOUCH_ZONE_DEFAULT_HOVER:I = -0x2

.field public static final TOUCH_ZONE_EXTRA:I = 0xfe

.field public static final TOUCH_ZONE_LEFT:I = 0x4

.field public static final TOUCH_ZONE_LINE_CONNECTOR:I = 0xd

.field public static final TOUCH_ZONE_LINE_CONTROL:I = 0xc

.field public static final TOUCH_ZONE_LINE_MOVE:I = 0xe

.field public static final TOUCH_ZONE_MAX:I = 0xff

.field public static final TOUCH_ZONE_MOVE:I = 0x9

.field public static final TOUCH_ZONE_NONE:I = -0x1

.field public static final TOUCH_ZONE_RIGHT:I = 0x5

.field public static final TOUCH_ZONE_ROTATE:I = 0x0

.field public static final TOUCH_ZONE_TOP:I = 0x2

.field public static final TOUCH_ZONE_TOP_LEFT:I = 0x1

.field public static final TOUCH_ZONE_TOP_RIGHT:I = 0x3


# instance fields
.field private mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

.field private mBorderRect:Landroid/graphics/RectF;

.field private mCandidateTouchZoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;",
            ">;"
        }
    .end annotation
.end field

.field private final mControl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenControlBase;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRect:Landroid/graphics/RectF;

.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

.field private mMinimumResizeRect:Landroid/graphics/RectF;

.field private mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

.field private mPan:Landroid/graphics/PointF;

.field private mTouchZoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRatio:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mBorderRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mControl:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mBorderRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-void
.end method

.method private Increase2MinimumRect(Landroid/graphics/RectF;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public static getRect(ILandroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 14

    if-nez p1, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v6, v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v1, p2, v9

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v0, p2, v9

    int-to-float v9, v7

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v10, v10, p2

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    const/4 v3, 0x1

    :cond_2
    :goto_1
    int-to-float v9, v6

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v10, v10, p2

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    const/4 v2, 0x1

    :cond_3
    :goto_2
    move/from16 v4, p2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v5, 0x3fc00000    # 1.5f

    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->right:F

    iget v11, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v10, p2, v5

    sub-float/2addr v9, v10

    iget v10, p1, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x40800000    # 4.0f

    mul-float v11, v11, p2

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x41f00000    # 30.0f

    sub-float/2addr v10, v11

    add-float v10, v10, p2

    iget v11, p1, Landroid/graphics/RectF;->left:F

    iget v12, p1, Landroid/graphics/RectF;->right:F

    iget v13, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float v12, p2, v5

    add-float/2addr v11, v12

    iget v12, p1, Landroid/graphics/RectF;->top:F

    mul-float v13, p2, v5

    sub-float/2addr v12, v13

    const/high16 v13, 0x41f00000    # 30.0f

    sub-float/2addr v12, v13

    add-float v12, v12, p2

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_4
    int-to-float v9, v7

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v10, v10, p2

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    div-int/lit8 v9, v7, 0x4

    int-to-float v1, v9

    goto :goto_1

    :cond_5
    int-to-float v9, v6

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v10, v10, p2

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    div-int/lit8 v9, v6, 0x4

    int-to-float v0, v9

    goto :goto_2

    :pswitch_1
    iget v9, p1, Landroid/graphics/RectF;->left:F

    sub-float v9, v9, p2

    sub-float/2addr v9, v4

    iget v10, p1, Landroid/graphics/RectF;->top:F

    sub-float v10, v10, p2

    sub-float/2addr v10, v4

    iget v11, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v1

    iget v12, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v9, v1

    iget v10, p1, Landroid/graphics/RectF;->top:F

    sub-float v10, v10, p2

    sub-float/2addr v10, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    add-float/2addr v11, v1

    iget v12, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v3, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_3
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v1

    iget v10, p1, Landroid/graphics/RectF;->top:F

    sub-float v10, v10, p2

    sub-float/2addr v10, v4

    iget v11, p1, Landroid/graphics/RectF;->right:F

    add-float v11, v11, p2

    add-float/2addr v11, v4

    iget v12, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_4
    iget v9, p1, Landroid/graphics/RectF;->left:F

    sub-float v9, v9, p2

    sub-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v10, v0

    iget v11, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    add-float/2addr v12, v0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->top:F

    iget v11, p1, Landroid/graphics/RectF;->right:F

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_6
    iget v9, p1, Landroid/graphics/RectF;->left:F

    sub-float v9, v9, p2

    sub-float/2addr v9, v4

    iget v10, p1, Landroid/graphics/RectF;->top:F

    sub-float v10, v10, p2

    sub-float/2addr v10, v4

    iget v11, p1, Landroid/graphics/RectF;->right:F

    add-float v11, v11, p2

    add-float/2addr v11, v4

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v12, p2

    add-float/2addr v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_7
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v10, v0

    iget v11, p1, Landroid/graphics/RectF;->right:F

    add-float v11, v11, p2

    add-float/2addr v11, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    add-float/2addr v12, v0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_8
    iget v9, p1, Landroid/graphics/RectF;->left:F

    sub-float v9, v9, p2

    sub-float/2addr v9, v4

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v0

    iget v11, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v1

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v12, p2

    add-float/2addr v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v9, v1

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    add-float/2addr v11, v1

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v12, p2

    add-float/2addr v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v3, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_a
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v1

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v0

    iget v11, p1, Landroid/graphics/RectF;->right:F

    add-float v11, v11, p2

    add-float/2addr v11, v4

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v12, p2

    add-float/2addr v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private hover(Landroid/graphics/PointF;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    int-to-float v4, v3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v5, v3

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v3

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v3, v8

    float-to-double v8, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-direct {v12, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    const/4 v13, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/16 v4, 0x80

    iget v5, v14, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->findTopObjectAtPosition(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v13, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v3

    if-ge v2, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, v12, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v12, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v3

    if-ge v2, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v3, :cond_3

    new-instance v19, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    move-object/from16 v0, p1

    invoke-interface {v4, v3, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    goto :goto_2
.end method

.method public static isCornerZone(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMoveZone(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizeZone(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isRotateZone(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private touchDown(Landroid/graphics/PointF;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    int-to-float v4, v3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v5, v3

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v3

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v3, v8

    float-to-double v8, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRotatedPoint(FFFFD)Landroid/graphics/PointF;

    move-result-object v16

    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-direct {v12, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getAbsoluteCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    const/4 v13, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    const/16 v4, 0x80

    iget v5, v14, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->findTopObjectAtPosition(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v13, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v3

    if-ge v2, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, v12, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v12, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v3

    if-ge v2, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    goto :goto_1

    :cond_2
    const-string v3, "ControlTouchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchDown mCandidateTouchZoneList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v3, :cond_3

    new-instance v19, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;-><init>(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    const-string v3, "ControlTouchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchDown mActiveTouchZone.mType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    goto :goto_2
.end method

.method private touchMove(Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onTouchMoveEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private touchUp(Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    if-eqz v0, :cond_0

    const-string v0, "ControlTouchManager"

    const-string v1, "touchUp onTouchUpEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;->onTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->updateTouchZoneList()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mId:I
    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$002(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mId:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    goto :goto_0

    :cond_1
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_1

    :cond_2
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_1

    :cond_3
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    :cond_4
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v1

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPoint:Landroid/graphics/PointF;
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getControlRect(FLandroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v1

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_1

    :cond_5
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v1

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRect(ILandroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    goto :goto_1
.end method

.method public getAbsoluteCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public getAbsoluteRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getActiveTouchZoneType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mActiveTouchZone:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getControlRect(FLandroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float v2, p1, v6

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float v3, p1, v6

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float v4, p1, v6

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float v5, p1, v6

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public getRelativeCoordinate(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getRotatedPoint(FFFFD)Landroid/graphics/PointF;
    .locals 21

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    sub-float v16, p1, p3

    move/from16 v0, v16

    float-to-double v12, v0

    sub-float v16, p2, p4

    move/from16 v0, v16

    float-to-double v14, v0

    mul-double v16, v12, v2

    mul-double v18, v14, v10

    sub-double v16, v16, v18

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v6, v16, v18

    mul-double v16, v12, v10

    mul-double v18, v14, v2

    add-double v16, v16, v18

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v16, v18

    new-instance v16, Landroid/graphics/PointF;

    double-to-float v0, v6

    move/from16 v17, v0

    double-to-float v0, v8

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v16
.end method

.method public getTouchZoneRect(I)Landroid/graphics/RectF;
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->hover(Landroid/graphics/PointF;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->touchDown(Landroid/graphics/PointF;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->touchMove(Landroid/graphics/PointF;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->touchUp(Landroid/graphics/PointF;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCoordinateInfo(Landroid/graphics/PointF;FLandroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mPan:Landroid/graphics/PointF;

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mZoomRatio:F

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mFrameRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;

    return-void
.end method

.method public setMinimumResizeRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mMinimumResizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mCandidateTouchZoneList:Ljava/util/ArrayList;

    return-void
.end method

.method public updateTouchZoneList()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mObjectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->Increase2MinimumRect(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->mTouchZoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v5

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v6

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v7

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPoint(IF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getControlRect(FLandroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v5

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v6

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v7

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getControlPoint(IF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getControlRect(FLandroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v5

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v6

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v7

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getConnectorPosition(IF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getControlRect(FLandroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_2

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;

    move-result-object v5

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I

    move-result v6

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F

    move-result v7

    invoke-static {v6, v2, v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;->getRect(ILandroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1
.end method
