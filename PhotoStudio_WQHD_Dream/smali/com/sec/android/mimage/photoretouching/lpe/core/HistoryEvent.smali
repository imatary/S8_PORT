.class public Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
.super Ljava/lang/Object;
.source "HistoryEvent.java"


# static fields
.field public static final STATE_DONE:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RUNNING:I = 0x2

.field public static final STATE_SET:I = 0x1


# instance fields
.field private isAutoEnhanced:Z

.field private isFacePresent:Z

.field public mIsPng:Z

.field private mLayerId:I

.field private mOriginalHeight:I

.field private mOriginalId:I

.field private mOriginalState:I

.field private mOriginalWidth:I

.field private mPreviewHeight:I

.field private mPreviewId:I

.field private mPreviewState:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mIsPng:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isFacePresent:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isAutoEnhanced:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mLayerId:I

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewState:I

    return p1
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->delete(I)Z

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->delete(I)Z

    :cond_1
    return-void
.end method

.method public getAutoEnhanced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isAutoEnhanced:Z

    return v0
.end method

.method public getFaceDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isFacePresent:Z

    return v0
.end method

.method public getIsPng()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mIsPng:Z

    return v0
.end method

.method public getLayerId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mLayerId:I

    return v0
.end method

.method public getOriginalHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalHeight:I

    return v0
.end method

.method public getOriginalId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    return v0
.end method

.method public getOriginalState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalState:I

    return v0
.end method

.method public getOriginalWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalWidth:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I

    return v0
.end method

.method public getPreviewState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewState:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewWidth:I

    return v0
.end method

.method public setAutoEnhanced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isAutoEnhanced:Z

    return-void
.end method

.method public setFaceDetected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->isFacePresent:Z

    return-void
.end method

.method public setIsPng(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mIsPng:Z

    return-void
.end method

.method public setOriginalData(III)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalState:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalHeight:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalState:I

    return-void
.end method

.method public setOriginalDimensions(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalHeight:I

    return-void
.end method

.method public setOriginalId(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mOriginalState:I

    return-void
.end method

.method public setPreviewData([III)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewHeight:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewState:I

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->addPreview([ILcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;)V

    goto :goto_0
.end method
