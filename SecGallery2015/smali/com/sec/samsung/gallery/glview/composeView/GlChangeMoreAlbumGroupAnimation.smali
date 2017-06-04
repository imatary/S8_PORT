.class public Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlChangeMoreAlbumGroupAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlChangMoreAlbumGrpAnim"


# instance fields
.field private mAddIndex:I

.field private mDividerIndex:I

.field private mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

.field private mDragIndex:I

.field private final mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

.field private mEnd:I

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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mTmpObject:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 9

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, p1

    mul-float v5, v3, v3

    sub-float v3, v6, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msx:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mtx:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msx:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msy:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mty:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msy:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msz:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mtz:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->msz:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPos(IFFF)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

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

    :cond_1
    return-void
.end method

.method public changeIndex(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string/jumbo v0, "GlChangMoreAlbumGrpAnim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnim:changeIndex dividerIndex-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dragIndex-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDragIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlChangMoreAlbumGrpAnim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnim:changeIndex mStart-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEnd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDragIndex:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mAddIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDragIndex:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mStart:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->changeGroupIndex(Ljava/util/HashSet;IIIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    invoke-virtual {v0, v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->addPos(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->releasePosIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iput v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    if-eq v1, v8, :cond_2

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v7, v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->addPos(II)V

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->releasePosIndex(I)V

    iput v8, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    goto :goto_1

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mAddIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDragIndex:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mStart:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->changeGroupIndex(Ljava/util/HashSet;IIIII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "GlChangMoreAlbumGrpAnim"

    const-string/jumbo v2, "startAnim onStop+"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->getLastRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtx:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mty:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mtz:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    if-ltz v2, :cond_2

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->releasePosIndex(I)V

    :cond_2
    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mTmpObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public startAnim(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;IILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 18

    const-string/jumbo v13, "GlChangMoreAlbumGrpAnim"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startAnim: dividerIndex-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", dragIndex-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move/from16 v12, p2

    move/from16 v11, p3

    if-le v12, v11, :cond_1

    add-int/lit8 v3, v12, -0x1

    move v12, v11

    const/4 v2, -0x1

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mAddIndex:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mStart:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mEnd:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerIndex:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDragIndex:I

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v7

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v9, v13, :cond_3

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v5, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move v3, v11

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v6

    if-gt v12, v6, :cond_0

    if-gt v6, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string/jumbo v13, "GlChangMoreAlbumGrpAnim"

    const-string/jumbo v14, "startAnim+"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setPosIndex()I

    move-result v14

    iput v14, v13, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    invoke-virtual {v14, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getDX(I)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getDY(I)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mHndDispmnt:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getDZ(I)F

    move-result v16

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setSourcePos(FFF)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mAddIndex:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    const/4 v14, 0x0

    add-int/lit8 v15, p2, 0x1

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getChangeGroupDY(II)F

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->moveToLast()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mObject:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v14, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_7

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPosIndex()I

    move-result v14

    iput v14, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourcePos(FFF)V

    :goto_5
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v14

    move/from16 v0, p3

    if-ne v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    const/4 v14, -0x1

    if-ne v2, v14, :cond_8

    add-int/lit8 v14, p2, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v14, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getChangeGroupPosition(IILcom/sec/android/gallery3d/glcore/GlPos;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v14, v14, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v15, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v15, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDividerObject:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    const/4 v14, 0x0

    add-int/lit8 v15, p2, 0x1

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getChangeGroupDY(II)F

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setTargetPos(FFF)V

    goto/16 :goto_3

    :cond_7
    iget v8, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDX(I)F

    move-result v14

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDY(I)F

    move-result v15

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getDZ(I)F

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setSourcePos(FFF)V

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getChangeGroupPosition(IILcom/sec/android/gallery3d/glcore/GlPos;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v10

    if-gt v12, v10, :cond_a

    if-gt v10, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    add-int v14, v10, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v14, v14, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v15, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v15, v15, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->mSrcPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_4

    :cond_a
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setTargetPos(FFF)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->start()V

    return-void
.end method
