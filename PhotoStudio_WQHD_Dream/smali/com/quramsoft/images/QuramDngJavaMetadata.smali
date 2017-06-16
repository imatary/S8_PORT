.class public Lcom/quramsoft/images/QuramDngJavaMetadata;
.super Ljava/lang/Object;
.source "QuramDngJavaMetadata.java"


# instance fields
.field mBaseOrientation:Lcom/quramsoft/images/QuramDngOrientation;

.field mCropOrigin:Lcom/quramsoft/images/QuramDngJavaPoint;

.field mCropSize:Lcom/quramsoft/images/QuramDngJavaPoint;

.field mEmbeddedXMPDigest:Lcom/quramsoft/images/QuramDngFingerPrint;

.field mHasBaseOrientation:Z

.field mIPTCBlock:[B

.field mIPTCBlockSize:J

.field mIPTCOffset:J

.field mImageHeight:I

.field mImageWidth:I

.field mIsMakerNoteSafe:Z

.field mMakerNote:[B

.field mMakerNoteSize:J

.field mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExif;

.field mSourceMIME:Ljava/lang/String;

.field mXMPinSidecar:Z

.field mXMPisNewer:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildMetadata(Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;)V
    .locals 4

    iget-boolean v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mHasBaseOrientation:Z

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mHasBaseOrientation:Z

    new-instance v0, Lcom/quramsoft/images/QuramDngOrientation;

    iget-wide v2, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mBaseOrientation:J

    invoke-direct {v0, v2, v3}, Lcom/quramsoft/images/QuramDngOrientation;-><init>(J)V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mBaseOrientation:Lcom/quramsoft/images/QuramDngOrientation;

    iget-boolean v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mIsMakerNoteSafe:Z

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIsMakerNoteSafe:Z

    iget v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mImageWidth:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mImageWidth:I

    iget v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mImageHeight:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mImageHeight:I

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaPoint;

    iget v1, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mCropOriginX:I

    iget v2, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mCropOriginY:I

    invoke-direct {v0, v1, v2}, Lcom/quramsoft/images/QuramDngJavaPoint;-><init>(II)V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mCropOrigin:Lcom/quramsoft/images/QuramDngJavaPoint;

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaPoint;

    iget v1, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mCropWidth:I

    iget v2, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mCropHeight:I

    invoke-direct {v0, v1, v2}, Lcom/quramsoft/images/QuramDngJavaPoint;-><init>(II)V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mCropSize:Lcom/quramsoft/images/QuramDngJavaPoint;

    iget-object v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mMakerNote:[B

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mMakerNote:[B

    iget-wide v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mMakerNoteSize:J

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mMakerNoteSize:J

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaExif;

    iget-object v1, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v0, v1}, Lcom/quramsoft/images/QuramDngJavaExif;-><init>(Lcom/quramsoft/images/QuramDngJavaExifPrimitive;)V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExif;

    iget-object v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mIPTCBlock:[B

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCBlock:[B

    iget-wide v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mIPTCBlockSize:J

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCBlockSize:J

    iget-wide v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mIPTCOffset:J

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCOffset:J

    new-instance v0, Lcom/quramsoft/images/QuramDngFingerPrint;

    iget-object v1, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mEmbeddedXMPDigest:[B

    invoke-direct {v0, v1}, Lcom/quramsoft/images/QuramDngFingerPrint;-><init>([B)V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mEmbeddedXMPDigest:Lcom/quramsoft/images/QuramDngFingerPrint;

    iget-boolean v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mXMPinSidecar:Z

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mXMPinSidecar:Z

    iget-boolean v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mXMPisNewer:Z

    iput-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mXMPisNewer:Z

    iget-object v0, p1, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mSourceMIME:Ljava/lang/String;

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mSourceMIME:Ljava/lang/String;

    return-void
.end method

.method public getBaseOrientation()Lcom/quramsoft/images/QuramDngOrientation;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mBaseOrientation:Lcom/quramsoft/images/QuramDngOrientation;

    return-object v0
.end method

.method public getCropOrigin()Lcom/quramsoft/images/QuramDngJavaPoint;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mCropOrigin:Lcom/quramsoft/images/QuramDngJavaPoint;

    return-object v0
.end method

.method public getCropSize()Lcom/quramsoft/images/QuramDngJavaPoint;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mCropSize:Lcom/quramsoft/images/QuramDngJavaPoint;

    return-object v0
.end method

.method public getEmbeddedXMPDigest()Lcom/quramsoft/images/QuramDngFingerPrint;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mEmbeddedXMPDigest:Lcom/quramsoft/images/QuramDngFingerPrint;

    return-object v0
.end method

.method public getHasBaseOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mHasBaseOrientation:Z

    return v0
.end method

.method public getIPTCBlock(I)B
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCBlock:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getIPTCBlockSize()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCBlockSize:J

    return-wide v0
.end method

.method public getIPTCOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIPTCOffset:J

    return-wide v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mImageWidth:I

    return v0
.end method

.method public getIsMakerNoteSafe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mIsMakerNoteSafe:Z

    return v0
.end method

.method public getMakerNote(I)B
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mMakerNote:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getMakerNoteSize()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mMakerNoteSize:J

    return-wide v0
.end method

.method public getOriginalExif()Lcom/quramsoft/images/QuramDngJavaExif;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExif;

    return-object v0
.end method

.method public getSourceMIME()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mSourceMIME:Ljava/lang/String;

    return-object v0
.end method

.method public getXMPinSidecar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mXMPinSidecar:Z

    return v0
.end method

.method public getXMPisNewer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadata;->mXMPisNewer:Z

    return v0
.end method
