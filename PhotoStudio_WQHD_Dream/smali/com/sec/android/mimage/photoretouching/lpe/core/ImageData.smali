.class public Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;,
        Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ImageData"


# instance fields
.field private filePath:Ljava/lang/String;

.field private firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field private isEdited:Z

.field private isFromPersonalPage:Z

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field private mIsLasso:Z

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

.field private mOriginalData:[I

.field private mOriginalDataId:I

.field private mOriginalHeight:I

.field private mOriginalMaskId:I

.field private mOriginalWidth:I

.field private mPersonalPagePath:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewInputBuffer:[I

.field private mPreviewMaskBuffer:[B

.field private mPreviewWidth:I

.field private mPrivateSaveFolder:Ljava/lang/String;

.field private mThumbLoader:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalMaskId:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mIsLasso:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-interface {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "imagedata"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    return v0
.end method


# virtual methods
.method public checkValidOriginalData()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getLayerId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    const-string v1, "PEDIT_ImageData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mOriginalDataId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  currEvent.getOriginalId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsAlphaAvailable()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-eq v4, v5, :cond_2

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getLayerId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getOriginalBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    return-object v0
.end method

.method public getOriginalBufferId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    return v0
.end method

.method public getOriginalHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    return v0
.end method

.method public getOriginalMaskId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalMaskId:I

    return v0
.end method

.method public getOriginalWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    return v0
.end method

.method public getPersonalPagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewMaskBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewMaskBuffer:[B

    return-object v0
.end method

.method public getPreviewOutputBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getPreviewOutputBuffer()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    return v0
.end method

.method public getPrivateSaveFolder()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPrivateSaveFolder:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPrivateSaveFolder:Ljava/lang/String;

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Private"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPrivateSaveFolder:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPrivateSaveFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM/Photo editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    return v0
.end method

.method public isFromPersonalPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isFromPersonalPage:Z

    return v0
.end method

.method public isLasso()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mIsLasso:Z

    return v0
.end method

.method public isPng()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isLasso()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    const-string v3, ".PNG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    :goto_0
    return v0

    :cond_1
    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onOriginalDecode([III)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v1, :cond_0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    :cond_0
    return-void
.end method

.method public reloadThumbnail()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onPreviewUpdate(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbLoader:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbLoader:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbLoader:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbLoader:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public resetOriginal()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onOriginalUpdated()V

    :cond_0
    return-void
.end method

.method public setBuffers([IIILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    invoke-virtual {p0, p4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getLayerId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isPng()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setIsPng(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->addHistoryEvent(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getStateManager()Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addEventForFaceDetection(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZZ)V

    return-void
.end method

.method public setEdited()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    return-void
.end method

.method public setEdited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setIsLasso(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mIsLasso:Z

    return-void
.end method

.method public setOriginalBuffer([III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onOriginalUpdated()V

    :cond_0
    return-void
.end method

.method public setOriginalData([III)V
    .locals 0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalData:[I

    return-void
.end method

.method public setOriginalDimensions(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I

    return-void
.end method

.method public setOriginalId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I

    return-void
.end method

.method public setPreviewBuffer([IIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZZ)V

    :cond_0
    return-void
.end method

.method public setPreviewBuffer([IIIZZ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewBuffer size, width, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewMaskBuffer:[B

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    if-eq v0, p3, :cond_1

    :cond_0
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    mul-int v0, p2, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewMaskBuffer:[B

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewMaskBuffer:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->clearSelectionBorder()V

    :cond_1
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onPreviewUpdated()V

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isEdited:Z

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->reloadThumbnail()V

    :cond_3
    return-void
.end method

.method public setPreviewData([III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I

    return-void
.end method

.method public setPreviewMaskBuffer([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewMaskBuffer:[B

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onIconUpdated(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateMaskBuffer([B)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalMaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->write([B)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalMaskId:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalMaskId:I

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->update([BI)Z

    goto :goto_0
.end method

.method public updateOriginalFromFile()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    const-string v0, "PEDIT_ImageData"

    const-string v1, "updateOriginalFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public updatePrivateFolderDetails()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isFromPersonalPage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->filePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPersonalPagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPrivateSaveFolder:Ljava/lang/String;

    :cond_2
    return-void
.end method
