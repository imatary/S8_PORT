.class public Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;
.super Ljava/lang/Object;
.source "QuramDngJavaMetadataPrimitive.java"


# instance fields
.field mBaseOrientation:J

.field mCropHeight:I

.field mCropOriginX:I

.field mCropOriginY:I

.field mCropWidth:I

.field mEmbeddedXMPDigest:[B

.field mHasBaseOrientation:Z

.field mIPTCBlock:[B

.field mIPTCBlockSize:J

.field mIPTCOffset:J

.field mImageHeight:I

.field mImageWidth:I

.field mIsMakerNoteSafe:Z

.field mMakerNote:[B

.field mMakerNoteSize:J

.field mOriginalExif:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

.field mSourceMIME:Ljava/lang/String;

.field mXMPinSidecar:Z

.field mXMPisNewer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngJavaMetadataPrimitive;->mEmbeddedXMPDigest:[B

    return-void
.end method
