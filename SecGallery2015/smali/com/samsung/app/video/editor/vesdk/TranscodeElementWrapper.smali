.class public Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
.super Lcom/samsung/app/video/editor/external/TranscodeElement;
.source "TranscodeElementWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;,
        Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$TextListComparator;,
        Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;
    }
.end annotation


# static fields
.field private static mElementListComparator:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;

.field private static mTextListComparator:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$TextListComparator;


# instance fields
.field private exporthm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;",
            ">;"
        }
    .end annotation
.end field

.field private isMissingFileProject:Z

.field private isSummaryProject:Z

.field private lastModified:Ljava/lang/String;

.field private transient mThumbnail:Landroid/graphics/Bitmap;

.field private mUniqueProjectID:Ljava/lang/String;

.field private projectCreationTime:J

.field private projectFileName:Ljava/lang/String;

.field private projectName:Ljava/lang/String;

.field private resolutionEnumValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mElementListComparator:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$TextListComparator;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$TextListComparator;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mTextListComparator:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$TextListComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isMissingFileProject:Z

    iput-boolean v2, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isSummaryProject:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->exporthm:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Landroid/content/res/AssetManager;)V

    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v10, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isMissingFileProject:Z

    iput-boolean v10, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isSummaryProject:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->exporthm:Ljava/util/HashMap;

    iget v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->resolutionEnumValue:I

    iput v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->resolutionEnumValue:I

    iget-wide v8, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    iput-wide v8, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    iget-boolean v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isMissingFileProject:Z

    iput-boolean v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isMissingFileProject:Z

    iget-boolean v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isSummaryProject:Z

    iput-boolean v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isSummaryProject:Z

    iget-object v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectFileName:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectFileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectFileName:Ljava/lang/String;

    :cond_0
    iget-object v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    :cond_1
    iget-object v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mUniqueProjectID:Ljava/lang/String;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mUniqueProjectID:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mUniqueProjectID:Ljava/lang/String;

    :cond_2
    iget-object v7, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->lastModified:Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->lastModified:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->lastModified:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setThemeName(I)V

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setAssetManager(Landroid/content/res/AssetManager;)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getClipVideoAspectRatio()Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setClipVideoAspectRatio(Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getClipVideoCollageType()Lcom/samsung/app/video/editor/external/ClipVideoCollageType;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setClipVideoCollageType(Lcom/samsung/app/video/editor/external/ClipVideoCollageType;)Z

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v4, v7, :cond_5

    invoke-virtual {p1, v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    new-instance v8, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-direct {v8, v7}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    invoke-virtual {p0, v4, v2, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(IILcom/samsung/app/video/editor/external/Element;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    new-instance v8, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-direct {v8, v7}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    invoke-virtual {p0, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addBGM(Lcom/samsung/app/video/editor/external/Element;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_7

    new-instance v8, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-direct {v8, v7}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)V

    invoke-virtual {p0, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter p0

    :try_start_4
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/external/Element;

    new-instance v8, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    check-cast v5, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-direct {v8, v5}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V

    invoke-virtual {p0, v8}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addNarration(Lcom/samsung/app/video/editor/external/Element;)Z

    goto :goto_4

    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    :cond_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method

.method public static areSlowMotionRegionsSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Region;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Region;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v6

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCountFromElementList(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getElementInternal(ILjava/util/List;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;)",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAudioElementItemSame(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryBoardStartTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryBoardStartTime()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryBoardEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStoryBoardEndTime()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-static {v2, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isElementEditSame(Lcom/samsung/app/video/editor/vesdk/EditWrapper;Lcom/samsung/app/video/editor/vesdk/EditWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private static isCaptionItemSame(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardStartTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardStartTime()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardEndTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getStoryBoardEndTime()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->themeId:I

    iget v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->themeId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionTextAlignment:I

    iget v2, p1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->mCaptionTextAlignment:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isElementEditSame(Lcom/samsung/app/video/editor/vesdk/EditWrapper;Lcom/samsung/app/video/editor/vesdk/EditWrapper;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getTrans_duration()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getTrans_duration()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getVolumeLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getVolumeLevel()I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isElementSame(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOrientation()Lcom/samsung/app/video/editor/external/Orientation;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOrientation()Lcom/samsung/app/video/editor/external/Orientation;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-static {p0, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->areSlowMotionRegionsSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditListSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-static {v2, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isElementEditSame(Lcom/samsung/app/video/editor/vesdk/EditWrapper;Lcom/samsung/app/video/editor/vesdk/EditWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method public static isTranscodeContentSame(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Z
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v7

    if-ne v6, v7, :cond_c

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v7

    if-ne v6, v7, :cond_b

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-static {v6, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isElementSame(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_1
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-static {v6, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isCaptionItemSame(Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationElementCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationElementCount()I

    move-result v7

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationElementCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-static {v6, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isAudioElementItemSame(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v6, v8

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMCount()I

    move-result v7

    if-ne v6, v7, :cond_9

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-static {v6, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isAudioElementItemSame(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v6, v8

    goto/16 :goto_1

    :cond_9
    move v6, v8

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_b
    move v6, v8

    goto/16 :goto_1

    :cond_c
    move v6, v8

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v8

    goto/16 :goto_1
.end method

.method private recheckTranstionElements()V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v4, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    sget-object v5, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    sget-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private setOverLapTransitionFlag()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setOverLapTransitionFlag(I)V

    return-void
.end method

.method private setOverLapTransitionFlag(I)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, p1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isOverLapTransitionEnabled(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isOverLapTransitionEnabled(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    invoke-virtual {v3, v7}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ZIZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->removeTransitionEdit()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(Lcom/samsung/app/video/editor/external/Element;ZI)Z

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->recheckTranstionElements()V

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->overlapTransitionsHandling()V

    :cond_1
    return-void
.end method

.method public addElement(ILcom/samsung/app/video/editor/external/Element;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(IILcom/samsung/app/video/editor/external/Element;)Z

    move-result v0

    return v0
.end method

.method public addElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->addElement(Lcom/samsung/app/video/editor/external/Element;ZI)Z

    move-result v0

    return v0
.end method

.method public deleteAllClipArts()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts(Z)V

    return-void
.end method

.method public deleteAllClipArts(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v2, p1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->remove(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBGMCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getBGMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(II)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getElement(II)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementInternal(ILjava/util/List;)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getElementAt(J)Lcom/samsung/app/video/editor/external/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementAt(IJ)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount(I)I

    move-result v0

    return v0
.end method

.method public getElementCount(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getCountFromElementList(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNarrationElementCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getNarrationList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    return-wide v0
.end method

.method public getProjectFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v1

    const/16 v2, 0x27

    if-lt v1, v2, :cond_1

    :cond_0
    sget v1, Lcom/sec/android/app/ve/R$string;->project:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance()Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectFileNameAvailableNext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/ve/util/CommonUtils;->getThemeTitleString(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getResolutionEnumValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->resolutionEnumValue:I

    return v0
.end method

.method public getTextClipartParamsListForElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getGroupID()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextEleListCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getElementID()I

    move-result v5

    if-ne v5, v3, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTextEleListCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getexportHM()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->exporthm:Ljava/util/HashMap;

    return-object v0
.end method

.method public isOverLapTransitionEnabled(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getTransitionEdit()Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    move-result-object v0

    iput-boolean v1, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getTrans_duration()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :cond_0
    return v1
.end method

.method public overlapTransitionsHandling()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->isSummaryProject:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v1

    const/16 v2, 0x27

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setOverLapTransitionFlag()V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->verifyOverlapAreaDuration()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    goto :goto_0
.end method

.method public readProjectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public removeElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(II)Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method public removeElementAt(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->removeElementAt(II)Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method public setProjCreationTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectCreationTime:J

    return-void
.end method

.method public setProjectFileName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->projectName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public verifyOverlapAreaDuration()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->verifyOverlapAreaDuration(I)V

    return-void
.end method

.method public verifyOverlapAreaDuration(I)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move v3, p1

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v8

    add-int v6, v7, v8

    invoke-static {v2}, Lcom/sec/android/app/ve/util/CommonUtils;->getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v7

    int-to-float v1, v7

    invoke-static {v5}, Lcom/sec/android/app/ve/util/CommonUtils;->getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v7

    int-to-float v4, v7

    int-to-float v7, v6

    cmpg-float v7, v1, v7

    if-ltz v7, :cond_2

    int-to-float v7, v6

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    :cond_2
    invoke-virtual {v2, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    invoke-virtual {v5, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    iput-boolean v9, v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v8

    add-int v6, v7, v8

    invoke-static {v2}, Lcom/sec/android/app/ve/util/CommonUtils;->getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v7

    int-to-float v1, v7

    invoke-static {v5}, Lcom/sec/android/app/ve/util/CommonUtils;->getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I

    move-result v7

    int-to-float v4, v7

    int-to-float v7, v6

    cmpg-float v7, v1, v7

    if-ltz v7, :cond_4

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    :cond_4
    invoke-virtual {v2, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtEnd(I)Z

    invoke-virtual {v5, v9}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->setOverLapAtStart(I)Z

    iput-boolean v9, v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->isOverLapPossible:Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
