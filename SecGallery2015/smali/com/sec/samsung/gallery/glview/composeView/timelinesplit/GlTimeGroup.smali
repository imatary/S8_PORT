.class public Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlTimeGroup.java"


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFocusedIndex:I

.field private final mLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    return-void
.end method

.method private createTimeLabel(FLcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v4, p3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b028e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0292

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getWidth(Z)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v2, v3, v0

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setPos(FFF)V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->updateLabel(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private createTimePoints(F)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {v0, v3, p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setPos(FFF)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->updateColor(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createTimeTrack(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->getHeight(Z)F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->setPos(FFF)V

    return-void
.end method


# virtual methods
.method focusTimeItem(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    if-ge v2, v0, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->updateLabel(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->updateColor(Z)V

    :cond_2
    if-ge p1, v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->updateLabel(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->updateColor(Z)V

    :cond_3
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mCurrentFocusedIndex:I

    goto :goto_0
.end method

.method public getTimeLabelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTimePointList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-void
.end method

.method updateTimeList()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b028d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->removeAllChild()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->createTimeTrack(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->createTimePoints(F)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->createTimeLabel(FLcom/sec/android/gallery3d/data/MediaSet;I)V

    sub-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b028c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    goto :goto_0
.end method
