.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 3

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mFirstRangeOptimization:Z

    const-string/jumbo v0, "TimeViewState"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mUseSmartClustering:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mUseZoomLevelInformation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mUseScrollDirectionData:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setAlbumAttribute(I)I
    .locals 1

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;->mRetThmType:B

    return p1
.end method
