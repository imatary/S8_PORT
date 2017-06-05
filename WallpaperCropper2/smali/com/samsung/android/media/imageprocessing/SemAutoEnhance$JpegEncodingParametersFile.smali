.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;
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
    name = "JpegEncodingParametersFile"
.end annotation


# instance fields
.field inputImagePath:Ljava/lang/String;

.field public volatile isEncodingSuccess:Z

.field public volatile isThreadComplete:Z

.field outputImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->inputImagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->outputImagePath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - ImageEncode S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    iget-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->inputImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->outputImagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageEncodeFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - ImageEncode E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "Quram Encoder failed... Exiting app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    goto :goto_1
.end method
