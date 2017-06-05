.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegDecodingParameters"
.end annotation


# instance fields
.field height:I

.field imagePath:Ljava/lang/String;

.field inputBuffer:[B

.field public volatile isDecodingSuccess:Z

.field public volatile isThreadComplete:Z

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->inputBuffer:[B

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->width:I

    iput p4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->height:I

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - ImageDecode S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->imagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->inputBuffer:[B

    iget v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->width:I

    iget v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageDecode(Ljava/lang/String;[BII)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - ImageDecode E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Quram Decoder failed... Exiting app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    goto :goto_1
.end method
