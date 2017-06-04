.class public Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
.super Lcom/samsung/app/video/editor/external/Element;
.source "ElementWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private audioDisplayName:Ljava/lang/String;

.field public autoEdited:Z

.field public elementScale:F

.field private graceTime:I

.field private groupDuration:I

.field private groupEndTime:J

.field private groupStartTime:J

.field private is360Video:I

.field private is3DElement:Z

.field private is4K:Z

.field private isAudioOff:Z

.field private isBlankContent:Z

.field private isOriginallyNonSlowMotionVideo:Z

.field public isOverLapPossible:Z

.field private isSlowTVideo:Z

.field private isUHD:Z

.field private isWQHD:Z

.field private mAssetResource:Z

.field private mBackgroundColor:I

.field private ratioInGroup:F

.field private recordSuccess:Z

.field splitTime:I

.field public subType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->autoEdited:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->graceTime:I

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    const v0, 0x426aaaab

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->elementScale:F

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is3DElement:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->splitTime:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->ratioInGroup:F

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->recordSuccess:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->autoEdited:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->graceTime:I

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    const v0, 0x426aaaab

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->elementScale:F

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is3DElement:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->splitTime:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->ratioInGroup:F

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->recordSuccess:Z

    iput v1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mBackgroundColor:I

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->initVideoFlags()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryboardStartTime()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryboardEndTime()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/ElementType;Ljava/lang/String;IIII)V

    iput v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->autoEdited:Z

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    iput v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->graceTime:I

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    const v0, 0x426aaaab

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->elementScale:F

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is3DElement:Z

    iput v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->splitTime:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->ratioInGroup:F

    iput-boolean v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->recordSuccess:Z

    iput v12, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mBackgroundColor:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->audioDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->audioDisplayName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isBlankContent:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isBlankContent:Z

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->autoEdited:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->autoEdited:Z

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->graceTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->graceTime:I

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->elementScale:F

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->elementScale:F

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->subType:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->subType:I

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->splitTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->splitTime:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupDuration:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupDuration:I

    iget-wide v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupStartTime:J

    iput-wide v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupStartTime:J

    iget-wide v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupEndTime:J

    iput-wide v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->groupEndTime:J

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->ratioInGroup:F

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->ratioInGroup:F

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->recordSuccess:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->recordSuccess:Z

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mBackgroundColor:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mBackgroundColor:I

    iget-boolean v0, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOriginallyNonSlowMotionVideo:Z

    iput-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOriginallyNonSlowMotionVideo:Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setID(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setDuration(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getGroupID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setGroupID(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOrientation()Lcom/samsung/app/video/editor/external/Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOrientation(Lcom/samsung/app/video/editor/external/Orientation;)V

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setRecordingMode(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getNumOfSVCLayers()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setNumOfSVCLayers(I)Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-direct {v2, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/EditWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getBitmapAnimationsDataListCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getBitmapAnimationsDataList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getBitmapAnimationsDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    invoke-direct {v2, v0}, Lcom/samsung/app/video/editor/external/BitmapAnimationData;-><init>(Lcom/samsung/app/video/editor/external/BitmapAnimationData;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-enter p0

    :try_start_4
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRegions()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/app/video/editor/external/Region;

    new-instance v9, Lcom/samsung/app/video/editor/external/Region;

    invoke-direct {v9}, Lcom/samsung/app/video/editor/external/Region;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/external/Region;->setSlowEndTime(I)V

    invoke-virtual {v10}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/external/Region;->setSlowStartTime(I)V

    invoke-virtual {v10}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/external/Region;->setSpeedSlowRegion(Lcom/samsung/app/video/editor/external/Speed;)V

    invoke-virtual {p0, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addRegion(Lcom/samsung/app/video/editor/external/Region;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_2
    :try_start_6
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private initVideoFlags()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/CommonUtils;->isUHD(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setUHDinfo(Z)V

    invoke-static {v0}, Lcom/sec/android/app/ve/util/CommonUtils;->isWQHD(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setWQHDinfo(Z)V

    invoke-static {v0}, Lcom/sec/android/app/ve/util/CommonUtils;->is360Video(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setis360Video(I)V

    invoke-static {v0}, Lcom/sec/android/app/ve/util/CommonUtils;->is4K(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->set4Kinfo(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmapAnimationsDataListCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getBitmapAnimationsDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getBitmapAnimationsDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditListSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndTime()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()I

    move-result v0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlagForSlowMotionTVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isSlowTVideo:Z

    return v0
.end method

.method public getStartTime()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()I

    move-result v0

    return v0
.end method

.method public getTransitionEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTransitionTime()I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v2

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVolumeEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isAudioOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isAudioOff:Z

    return v0
.end method

.method public declared-synchronized removeTransitionEdit()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeVideoBasedParticleEffects()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BURST_SHOT:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set4Kinfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is4K:Z

    return-void
.end method

.method public setAssetResource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->mAssetResource:Z

    return-void
.end method

.method public setAudioDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->audioDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/app/video/editor/external/Element;->setFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->initVideoFlags()V

    :cond_0
    return v0
.end method

.method public setSubType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->subType:I

    return-void
.end method

.method public setUHDinfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isUHD:Z

    return-void
.end method

.method public setWQHDinfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isWQHD:Z

    return-void
.end method

.method public setis360Video(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->is360Video:I

    return-void
.end method
