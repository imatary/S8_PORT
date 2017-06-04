.class Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
.super Ljava/lang/Object;
.source "GlPenSelectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlPenSelectController"

.field private static final TYPE_ALBUMVIEW:I = 0x1

.field private static final TYPE_EVENTVIEW:I = 0x3

.field private static final TYPE_PHOTOVIEW:I = 0x2

.field private static final TYPE_TIMEVIEW:I


# instance fields
.field private mBottomStartAlbumIndex:I

.field private mBottomStartItemIndex:I

.field private mComposeBaseAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private final mContext:Landroid/content/Context;

.field private mDirection:I

.field private mEnd:Landroid/graphics/PointF;

.field private mEndAlbumIndex:I

.field private mEndItemIndex:I

.field private final mIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerType:I

.field private mLeftStartAlbumIndex:I

.field private mLeftStartItemIndex:I

.field private mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

.field private mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mRightStartAlbumIndex:I

.field private mRightStartItemIndex:I

.field private final mSelectedObjList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mStart:Landroid/graphics/PointF;

.field private mStartAlbumIndex:I

.field private mStartItemIndex:I

.field private mTopStartAlbumIndex:I

.field private mTopStartItemIndex:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    instance-of v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->initAttribute()V

    return-void

    :cond_1
    instance-of v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    goto :goto_0
.end method

.method private changeObjPositionInAlbumView()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    if-gez v5, :cond_2

    const/4 v4, -0x1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    mul-int v6, v0, v4

    sub-int v3, v5, v6

    :goto_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    if-gez v5, :cond_3

    const/4 v2, -0x1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    mul-int v6, v0, v2

    sub-int v1, v5, v6

    :goto_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    mul-int v5, v0, v2

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    mul-int v5, v0, v4

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    rem-int v3, v5, v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    div-int v4, v5, v0

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    rem-int v1, v5, v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    div-int v2, v5, v0

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    mul-int v5, v0, v2

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    mul-int v5, v0, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    mul-int v5, v0, v4

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    mul-int v5, v0, v2

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    mul-int v5, v0, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    mul-int v5, v0, v2

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0
.end method

.method private changeObjPositionInPhotoView()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    if-gez v5, :cond_2

    const/4 v4, -0x1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v6, v0, v4

    sub-int v3, v5, v6

    :goto_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    if-gez v5, :cond_3

    const/4 v2, -0x1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    mul-int v6, v0, v2

    sub-int v1, v5, v6

    :goto_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    mul-int v5, v0, v2

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v5, v0, v4

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    rem-int v3, v5, v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    div-int v4, v5, v0

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    rem-int v1, v5, v0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    div-int v2, v5, v0

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    mul-int v5, v0, v2

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v5, v0, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    mul-int v5, v0, v4

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v5, v0, v2

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    mul-int v5, v0, v4

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v5, v0, v2

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0
.end method

.method private changeObjPositionInTimeView()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    if-gez v6, :cond_2

    const/4 v4, -0x1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v7, v0, v4

    sub-int v3, v6, v7

    :goto_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    if-gez v6, :cond_3

    const/4 v2, -0x1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    mul-int v7, v0, v2

    sub-int v1, v6, v7

    :goto_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    mul-int v6, v0, v2

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v6, v0, v4

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    rem-int v3, v6, v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    div-int v4, v6, v0

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    rem-int v1, v6, v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    div-int v2, v6, v0

    goto :goto_2

    :cond_4
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    mul-int v6, v0, v2

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v6, v0, v4

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    mul-int v6, v0, v4

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v6, v0, v2

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    mul-int v6, v0, v4

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    mul-int v6, v0, v2

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    goto :goto_0
.end method

.method private checkAlbumListLastObject(Landroid/graphics/PointF;ILandroid/graphics/Rect;)Z
    .locals 3

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkDirection()I
    .locals 8

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStart:Landroid/graphics/PointF;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEnd:Landroid/graphics/PointF;

    if-nez v6, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEnd:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEnd:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_4

    move v0, v4

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEnd:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_6

    move v0, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_8

    move v0, v5

    :goto_4
    goto :goto_1

    :cond_8
    move v0, v4

    goto :goto_4
.end method

.method private checkDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 10

    iget v6, p2, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    iget v6, p2, Landroid/graphics/PointF;->y:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method private checkObjPosIn(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z
    .locals 6

    const/4 v3, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkAlbumListLastObject(Landroid/graphics/PointF;ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    invoke-static {p4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    :goto_0
    return v3

    :cond_0
    move v0, p3

    :goto_1
    if-gt v0, p4, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSelectionModeInAlbumView()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setObjPositionInAlbumView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->changeObjPositionInAlbumView()V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    rem-int v6, v7, v0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    rem-int v2, v7, v0

    if-gez v6, :cond_1

    add-int/2addr v6, v0

    :cond_1
    if-gez v2, :cond_2

    add-int/2addr v2, v0

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    :goto_1
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    add-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_5

    rem-int v1, v3, v0

    if-gez v1, :cond_3

    add-int/2addr v1, v0

    :cond_3
    if-gt v6, v1, :cond_4

    if-lt v2, v1, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    if-lez v7, :cond_4

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iput v3, v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    const/4 v7, -0x1

    iput v7, v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto :goto_0
.end method

.method private checkSelectionModeInPhotoView(Landroid/graphics/Rect;II)V
    .locals 14

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setObjPositionInPhotoView()Z

    move-result v9

    if-nez v9, :cond_5

    move/from16 v4, p2

    :goto_1
    move/from16 v0, p3

    if-gt v4, v0, :cond_4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v10}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    invoke-static {p1, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {p1, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_3
    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    new-instance v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    iput v12, v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v6, v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPrePenSelectionCheck()V

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->changeObjPositionInPhotoView()V

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    rem-int v11, v12, v1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    rem-int v3, v12, v1

    if-gez v11, :cond_6

    add-int/2addr v11, v1

    :cond_6
    if-gez v3, :cond_7

    add-int/2addr v3, v1

    :cond_7
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    :goto_3
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    add-int/lit8 v12, v12, 0x1

    if-ge v4, v12, :cond_a

    rem-int v2, v4, v1

    if-gez v2, :cond_8

    add-int/2addr v2, v1

    :cond_8
    if-gt v11, v2, :cond_9

    if-lt v3, v2, :cond_9

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mComposeBaseAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    invoke-virtual {v12, v13, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mComposeBaseAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v12

    if-ge v4, v12, :cond_9

    if-eqz v7, :cond_9

    new-instance v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    iput v12, v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v4, v8, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPrePenSelectionCheck()V

    :cond_b
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto/16 :goto_0
.end method

.method private checkSelectionModeInTimeView(Landroid/graphics/Rect;II)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setObjPositionInTimeView()Z

    move-result v12

    if-nez v12, :cond_6

    move/from16 v5, p2

    :goto_1
    move/from16 v0, p3

    if-gt v5, v0, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v13}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_4
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    new-instance v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iput v1, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v7, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPrePenSelectionCheck()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->changeObjPositionInTimeView()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    rem-int v14, v15, v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    rem-int v4, v15, v2

    if-gez v14, :cond_7

    add-int/2addr v14, v2

    :cond_7
    if-gez v4, :cond_8

    add-int/2addr v4, v2

    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    add-int/lit8 v15, v15, 0x1

    if-ge v5, v15, :cond_b

    rem-int v3, v5, v2

    if-gez v3, :cond_9

    add-int/2addr v3, v2

    :cond_9
    if-gt v14, v3, :cond_a

    if-lt v4, v3, :cond_a

    const/4 v15, 0x1

    invoke-virtual {v10, v5, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iput v15, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v5, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPrePenSelectionCheck()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    add-int/lit8 v15, v15, 0x1

    if-ge v5, v15, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    if-nez v10, :cond_e

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    if-ne v5, v15, :cond_11

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    :goto_5
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    if-ge v8, v15, :cond_d

    rem-int v3, v8, v2

    if-gez v3, :cond_f

    add-int/2addr v3, v2

    :cond_f
    if-gt v14, v3, :cond_10

    if-lt v4, v3, :cond_10

    const/4 v15, 0x1

    invoke-virtual {v10, v8, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    new-instance v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iput v5, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v8, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    if-ne v5, v15, :cond_13

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    add-int/lit8 v15, v15, 0x1

    if-ge v8, v15, :cond_d

    rem-int v3, v8, v2

    if-gt v14, v3, :cond_12

    if-lt v4, v3, :cond_12

    const/4 v15, 0x1

    invoke-virtual {v10, v8, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_12

    new-instance v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iput v5, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v8, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    if-ge v8, v15, :cond_d

    rem-int v3, v8, v2

    if-gt v14, v3, :cond_14

    if-lt v4, v3, :cond_14

    const/4 v15, 0x1

    invoke-virtual {v10, v8, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_14

    new-instance v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$1;)V

    iput v5, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iput v8, v11, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPrePenSelectionCheck()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->processPenSelection(Z)V

    goto/16 :goto_0
.end method

.method private enterSelectionModeFromPenSelect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;->enterSelectionModeFromPenSelect()V

    return-void
.end method

.method private getColumnCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupLineCount:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPhotoLineCount:I

    goto :goto_0
.end method

.method private getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    goto :goto_0
.end method

.method private getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mComposeBaseAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private onPenSelection(IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;->onPenSelection(IIZ)Z

    move-result v0

    return v0
.end method

.method private playHaptic()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private prePenSelectionCheck(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;->prePenSelectionCheck(II)Z

    move-result v0

    return v0
.end method

.method private processPenSelection(Z)V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->enterSelectionModeFromPenSelect()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    iget v6, v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    invoke-direct {p0, v6, v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->onPenSelection(IIZ)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GlPenSelectController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process: mSelectedObjList> size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processPrePenSelectionCheck()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->enterSelectionModeFromPenSelect()V

    :cond_0
    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    iget v4, v3, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->albumIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController$objPosition;->itemIndex:I

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->prePenSelectionCheck(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GlPenSelectController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check: mSelectedObjList> size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private searchEndObjectInAlbumView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z
    .locals 13

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x2710

    const/16 v7, 0x2710

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v2

    const/4 v10, -0x1

    const/4 v9, -0x1

    if-gtz v2, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkObjPosIn(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_f

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    rem-int v1, v0, v2

    div-int v8, v0, v2

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    :cond_3
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    if-ge v5, v8, :cond_4

    move v5, v8

    :cond_4
    move v10, v5

    :goto_2
    if-ge v4, v1, :cond_5

    move v4, v1

    :cond_5
    move v9, v4

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-le v7, v8, :cond_8

    move v7, v8

    :cond_8
    move v10, v7

    goto :goto_2

    :cond_9
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    :cond_a
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    if-ge v5, v8, :cond_b

    move v5, v8

    :cond_b
    move v10, v5

    :goto_4
    if-le v6, v1, :cond_c

    move v6, v1

    :cond_c
    move v9, v6

    goto :goto_3

    :cond_d
    if-le v7, v8, :cond_e

    move v7, v8

    :cond_e
    move v10, v7

    goto :goto_4

    :cond_f
    mul-int v11, v10, v2

    add-int/2addr v11, v9

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    const/4 v11, 0x1

    goto :goto_0
.end method

.method private searchEndObjectInPhotoView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z
    .locals 14

    const/4 v0, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x2710

    const/16 v8, 0x2710

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v2

    const/4 v11, -0x1

    const/4 v10, -0x1

    if-gtz v2, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkObjPosIn(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_f

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    rem-int v1, v4, v2

    div-int v9, v4, v2

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_9

    :cond_3
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7

    if-ge v6, v9, :cond_4

    move v6, v9

    :cond_4
    move v11, v6

    :goto_2
    if-ge v5, v1, :cond_5

    move v5, v1

    :cond_5
    move v10, v5

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-le v8, v9, :cond_8

    move v8, v9

    :cond_8
    move v11, v8

    goto :goto_2

    :cond_9
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    :cond_a
    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    if-ge v6, v9, :cond_b

    move v6, v9

    :cond_b
    move v11, v6

    :goto_4
    if-le v7, v1, :cond_c

    move v7, v1

    :cond_c
    move v10, v7

    goto :goto_3

    :cond_d
    if-le v8, v9, :cond_e

    move v8, v9

    :cond_e
    move v11, v8

    goto :goto_4

    :cond_f
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    mul-int v12, v11, v2

    add-int/2addr v12, v10

    iput v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private searchEndObjectInTimeView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z
    .locals 19

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v7, -0x1

    const/16 v11, 0x2710

    const/16 v12, 0x2710

    const/16 v10, 0x2710

    const/4 v14, -0x1

    const/16 v16, -0x1

    const/4 v15, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v4

    if-gtz v4, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkObjPosIn(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    rem-int v3, v6, v4

    div-int v13, v6, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    if-ge v7, v2, :cond_7

    move v7, v2

    const/4 v9, -0x1

    if-ge v9, v13, :cond_4

    move v9, v13

    :cond_4
    :goto_2
    move v14, v7

    move/from16 v16, v9

    :goto_3
    if-ge v8, v3, :cond_5

    move v8, v3

    :cond_5
    move v15, v8

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-ne v7, v2, :cond_4

    if-ge v9, v13, :cond_4

    move v9, v13

    goto :goto_2

    :cond_8
    if-le v10, v2, :cond_a

    move v10, v2

    const/16 v12, 0x2710

    if-le v12, v13, :cond_9

    move v12, v13

    :cond_9
    :goto_5
    move v14, v10

    move/from16 v16, v12

    goto :goto_3

    :cond_a
    if-ne v10, v2, :cond_9

    if-le v12, v13, :cond_9

    move v12, v13

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    if-ge v7, v2, :cond_f

    move v7, v2

    const/4 v9, -0x1

    if-ge v9, v13, :cond_d

    move v9, v13

    :cond_d
    :goto_6
    move v14, v7

    move/from16 v16, v9

    :goto_7
    if-le v11, v3, :cond_e

    move v11, v3

    :cond_e
    move v15, v11

    goto :goto_4

    :cond_f
    if-ne v7, v2, :cond_d

    if-ge v9, v13, :cond_d

    move v9, v13

    goto :goto_6

    :cond_10
    if-le v10, v2, :cond_12

    move v10, v2

    const/16 v12, 0x2710

    if-le v12, v13, :cond_11

    move v12, v13

    :cond_11
    :goto_8
    move v14, v10

    move/from16 v16, v12

    goto :goto_7

    :cond_12
    if-ne v10, v2, :cond_11

    if-le v12, v13, :cond_11

    move v12, v13

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    mul-int v17, v16, v4

    add-int v17, v17, v15

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private searchFirstObject(Landroid/graphics/PointF;II)Z
    .locals 25

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    const-wide v14, 0x40b3880000000000L    # 5000.0

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide v8, 0x40b3880000000000L    # 5000.0

    const-wide v12, 0x40b3880000000000L    # 5000.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0xa

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0xa

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkAlbumListLastObject(Landroid/graphics/PointF;ILandroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    invoke-static/range {p3 .. p3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    const/16 v23, 0x1

    :goto_0
    return v23

    :cond_0
    move/from16 v6, p2

    :goto_1
    move/from16 v0, p3

    if-gt v6, v0, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v16

    if-nez v16, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    const/16 v23, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    invoke-static/range {v21 .. v22}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_5

    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpg-double v23, v4, v14

    if-gtz v23, :cond_5

    move-wide v14, v4

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpg-double v23, v4, v10

    if-gtz v23, :cond_7

    move-wide v10, v4

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_8

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpg-double v23, v4, v8

    if-gtz v23, :cond_9

    move-wide v8, v4

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpg-double v23, v4, v12

    if-gtz v23, :cond_1

    move-wide v12, v4

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartAlbumIndex:I

    goto/16 :goto_2

    :cond_b
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method private setObjPositionInAlbumView()V
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    div-int v2, v3, v1

    :goto_1
    mul-int v3, v1, v2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    div-int v2, v3, v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    div-int v2, v3, v1

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    div-int/2addr v3, v1

    add-int/lit8 v2, v3, 0x2

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    rem-int v0, v3, v1

    const/4 v2, -0x1

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-eq v3, v4, :cond_8

    add-int/lit8 v0, v1, -0x1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    div-int v2, v3, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v1, -0x1

    const/4 v2, 0x2

    goto :goto_1
.end method

.method private setObjPositionInPhotoView()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    if-eq v4, v5, :cond_0

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    div-int v2, v3, v1

    :goto_1
    mul-int v3, v1, v2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    div-int/2addr v3, v1

    add-int/lit8 v2, v3, 0x2

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    if-eq v3, v5, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    rem-int v0, v3, v1

    const/4 v2, -0x1

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    if-eq v3, v5, :cond_7

    add-int/lit8 v0, v1, -0x1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    div-int v2, v3, v1

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    div-int v2, v3, v1

    goto :goto_1
.end method

.method private setObjPositionInTimeView()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->getColumnCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    if-ne v4, v5, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartAlbumIndex:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    if-eq v4, v5, :cond_0

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    if-eq v3, v5, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    div-int v2, v3, v1

    :cond_3
    :goto_1
    mul-int v3, v1, v2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    const/4 v2, -0x1

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    div-int v2, v3, v1

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    const/4 v2, -0x1

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    rem-int v0, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    div-int v2, v3, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    goto :goto_1
.end method


# virtual methods
.method public initAttribute()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStartItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEndItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mTopStartItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLeftStartItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mBottomStartItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mRightStartItemIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mSelectedObjList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public searchObject(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-direct {p0, p1, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchFirstObject(Landroid/graphics/PointF;II)Z

    move-result v0

    :cond_0
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-nez v2, :cond_8

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkSelectionModeInTimeView(Landroid/graphics/Rect;II)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;->isCheckAvailable()V

    :cond_2
    move v1, v0

    :goto_1
    return v1

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-nez v2, :cond_5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchEndObjectInTimeView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->playHaptic()V

    :cond_4
    :goto_2
    if-nez v0, :cond_0

    move v1, v0

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v3, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchEndObjectInAlbumView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->playHaptic()V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v4, :cond_7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchEndObjectInPhotoView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->playHaptic()V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchEndObjectInAlbumView(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->playHaptic()V

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v3, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkSelectionModeInAlbumView()V

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v4, :cond_a

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkSelectionModeInPhotoView(Landroid/graphics/Rect;II)V

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mLayerType:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkSelectionModeInAlbumView()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mComposeBaseAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-void
.end method

.method public setDirection()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->checkDirection()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mDirection:I

    return-void
.end method

.method public setEndPoint(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mEnd:Landroid/graphics/PointF;

    return-void
.end method

.method public setPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    return-void
.end method

.method public setPosCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-void
.end method

.method public setStartPoint(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->mStart:Landroid/graphics/PointF;

    return-void
.end method
