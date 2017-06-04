.class public Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.super Ljava/lang/Object;
.source "ComposeViewDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataConfig"
.end annotation


# instance fields
.field public mCheckSetVersion:Z

.field public mCurrentViewStateName:Ljava/lang/String;

.field public mFirstRangeOptimization:Z

.field public mRetThmType:B

.field public mScanAllSet:Z

.field public mScanFirstOnly:Z

.field public mUseBitmapDrawTask:Z

.field public mUseScrollDirectionData:Z

.field public mUseSmartClustering:Z

.field public mUseSocialStoryView:Z

.field public mUseStoryRealRatioClustering:Z

.field public mUseZoomLevelInformation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mScanFirstOnly:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mScanAllSet:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mCheckSetVersion:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mFirstRangeOptimization:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mCurrentViewStateName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseStoryRealRatioClustering:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseBitmapDrawTask:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseZoomLevelInformation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseScrollDirectionData:Z

    return-void
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
