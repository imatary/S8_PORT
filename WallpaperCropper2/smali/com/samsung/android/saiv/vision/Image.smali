.class public Lcom/samsung/android/saiv/vision/Image;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field private mHeight:I

.field private mImagePtr:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "saiv_nightshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "saiv_imagesequencestabilizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(II[BLcom/samsung/android/saiv/vision/Image$ImageBufferFormat;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iput-object v1, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad width, height or format argument\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p2, :cond_0

    sget-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->UNKNOWN:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    if-eq p4, v0, :cond_0

    invoke-virtual {p4}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/saiv/vision/Image;->bufferSize(III)I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p3, :cond_3

    :goto_0
    array-length v1, p3

    if-lt v1, v0, :cond_4

    iput-object p3, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iput p1, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    iput p2, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    iput-object p4, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iget v1, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    iget v2, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    iget-object v3, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    invoke-virtual {v3}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ordinal()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/saiv/vision/Image;->init([BIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can`t create c++ image object\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can`t calculate buffer size\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array p3, v0, [B

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Image needs more higher buffer size\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iput-object v1, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImagePtr is null\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/saiv/vision/Image;->getWidth(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/saiv/vision/Image;->getHeight(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    invoke-static {}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->values()[Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/saiv/vision/Image;->getFormat(J)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    iget v0, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    iget v1, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    iget-object v2, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    invoke-virtual {v2}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/saiv/vision/Image;->bufferSize(III)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/saiv/vision/Image;->getData(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    if-eqz v0, :cond_2

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can`t calculate buffer size\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can`t create image buffer\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native bufferSize(III)I
.end method

.method private native convertToFormat(IJ[B)[B
.end method

.method private native getData(J)[B
.end method

.method private native getDescription(J)Ljava/lang/String;
.end method

.method private native getFormat(J)I
.end method

.method private native getHeight(J)I
.end method

.method private native getWidth(J)I
.end method

.method private native init([BIII)J
.end method

.method private native release(J[B)V
.end method

.method private native setDescription(Ljava/lang/String;J)V
.end method


# virtual methods
.method public convertToFormat(Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ordinal()I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iget-object v1, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/saiv/vision/Image;->convertToFormat(IJ[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    iput-object p1, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/saiv/vision/Image;->getDescription(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mFormat:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/saiv/vision/Image;->mHeight:I

    return v0
.end method

.method public getPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/saiv/vision/Image;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iget-object v2, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/saiv/vision/Image;->release(J[B)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/saiv/vision/Image;->setDescription(Ljava/lang/String;J)V

    return-void
.end method
