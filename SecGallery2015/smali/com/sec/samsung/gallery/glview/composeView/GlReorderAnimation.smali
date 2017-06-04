.class public Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlReorderAnimation.java"


# static fields
.field private static final FEATURE_USE_MORE_ALBUM:Z

.field private static final TAG:Ljava/lang/String; = "GlReorderAnimation"


# instance fields
.field private mAddIndex:I

.field private mAnimateMoreAlbumDivider:Z

.field private mDragIndex:I

.field private final mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

.field private mEnd:I

.field private mFocusIndex:I

.field private mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

.field private final mObject:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

.field private mStart:I

.field private final mTmpObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mTmpObject:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAnimateMoreAlbumDivider:Z

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 9

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, p1

    mul-float v5, v3, v3

    sub-float v3, v6, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v6, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msx:F

    iget v7, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtx:F

    iget v8, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msx:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v0, v6, v7

    iget v6, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msy:F

    iget v7, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mty:F

    iget v8, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msy:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v1, v6, v7

    iget v6, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msz:F

    iget v7, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtz:F

    iget v8, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->msz:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v2, v6, v7

    iget v6, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPos(IFFF)V

    goto :goto_0

    :cond_0
    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAnimateMoreAlbumDivider:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msx:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mtx:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msx:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msy:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mty:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msy:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msz:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mtz:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msz:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v5, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(FFF)V

    :cond_1
    return-void
.end method

.method public changeIndex(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 9

    const/4 v8, -0x1

    const-string/jumbo v0, "GlReorderAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReorder:changeIndex focusIndex-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dragIndex-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlReorderAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReorder:changeIndex mStart-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEnd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAddIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mStart:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->changeGroupIndex(Ljava/util/HashSet;IIIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    if-eq v1, v8, :cond_1

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addPos(II)V

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->releasePosIndex(I)V

    iput v8, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAddIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mStart:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->changeGroupIndex(Ljava/util/HashSet;IIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "GlReorderAnimation"

    const-string/jumbo v2, "startReorder onStop+"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->getLastRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtx:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mty:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtz:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    if-ltz v2, :cond_3

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->releasePosIndex(I)V

    :cond_3
    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public startReorder(IILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;ZZI)V
    .locals 24

    const-string/jumbo v19, "GlReorderAnimation"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "startReorder: focusIndex-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", dragIndex-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    move/from16 v17, p1

    move/from16 v13, p2

    move/from16 v0, v17

    if-ne v0, v13, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-gez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move/from16 v0, v17

    if-le v0, v13, :cond_7

    move/from16 v6, v17

    move/from16 v17, v13

    const/4 v4, -0x1

    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAddIndex:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mStart:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mEnd:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    sget-boolean v19, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    sub-int v20, p6, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v19

    sub-int v19, p6, v19

    if-ltz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    sub-int v20, p6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUpsideAlbumCount(II)V

    :cond_5
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v9

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_13

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v7, :cond_11

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    sget-boolean v19, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v19, :cond_8

    move/from16 v0, v17

    if-ne v0, v13, :cond_8

    move/from16 v6, v17

    move/from16 v17, v13

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    move v6, v13

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez p5, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setMoreAlbumVisibility(Z)V

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v9

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v7, :cond_d

    :cond_c
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDragIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v8, v0, :cond_c

    if-eqz p5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mFocusIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUpsideAlbumCount(II)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumLastStatus()I

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUpsideAlbumCount(II)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v8

    move/from16 v0, v17

    if-gt v0, v8, :cond_6

    sget-boolean v19, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-nez v19, :cond_12

    if-gt v8, v6, :cond_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_13
    const-string/jumbo v19, "GlReorderAnimation"

    const-string/jumbo v20, "startReorder+"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v19, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_14
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_15

    new-instance v15, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v15}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v12

    move/from16 v0, v17

    if-gt v0, v12, :cond_14

    new-instance v15, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v15}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v19, p3

    check-cast v19, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->resetNewPosition()V

    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNewAlbumDividerPosition()Lcom/sec/android/gallery3d/glcore/GlPos;

    move-result-object v14

    if-eqz v14, :cond_19

    const/16 v19, 0x1

    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAnimateMoreAlbumDivider:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mAnimateMoreAlbumDivider:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getZ()F

    move-result v22

    invoke-virtual/range {v19 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v19, v0

    iget v0, v14, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    iget v0, v14, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    iget v0, v14, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    :cond_17
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mObject:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_20

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPosIndex()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourcePos(FFF)V

    :goto_b
    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_1c

    sget-boolean v20, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v20, :cond_1b

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_18
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetPosition()V

    goto/16 :goto_8

    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, v18

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDX(I)F

    move-result v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDY(I)F

    move-result v21

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDZ(I)F

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourcePos(FFF)V

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_a

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v12

    move/from16 v0, v17

    if-gt v0, v12, :cond_1e

    if-gt v12, v6, :cond_1e

    sget-boolean v20, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v20, :cond_1d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/glcore/GlPos;

    add-int v20, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    add-int v20, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_a

    :cond_1e
    sget-boolean v20, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v20, :cond_1f

    if-le v12, v6, :cond_1f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_1f
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_a

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->start()V

    goto/16 :goto_0
.end method
