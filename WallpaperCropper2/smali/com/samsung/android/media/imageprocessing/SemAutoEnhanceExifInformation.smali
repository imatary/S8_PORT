.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field Aperture:Ljava/lang/String;

.field Exposure:Ljava/lang/String;

.field FocalLength:Ljava/lang/String;

.field ISO:Ljava/lang/String;

.field Make:Ljava/lang/String;

.field Model:Ljava/lang/String;

.field WhiteBalance:Ljava/lang/String;

.field dateTime:Ljava/lang/String;

.field flashInfo:Ljava/lang/String;

.field gpsAltitude:Ljava/lang/String;

.field gpsAltitudeRef:Ljava/lang/String;

.field gpsDateStamp:Ljava/lang/String;

.field gpsLatitude:Ljava/lang/String;

.field gpsLatitudeRef:Ljava/lang/String;

.field gpsLongitude:Ljava/lang/String;

.field gpsLongitudeRef:Ljava/lang/String;

.field gpsProcessMethod:Ljava/lang/String;

.field gpsTimeStamp:Ljava/lang/String;

.field imageHeight:Ljava/lang/String;

.field imageWidth:Ljava/lang/String;

.field orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Flash"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->flashInfo:Ljava/lang/String;

    const-string/jumbo v1, "DateTime"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->dateTime:Ljava/lang/String;

    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->orientation:I

    const-string/jumbo v1, "FNumber"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Aperture:Ljava/lang/String;

    const-string/jumbo v1, "ISOSpeedRatings"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->ISO:Ljava/lang/String;

    const-string/jumbo v1, "ExposureTime"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Exposure:Ljava/lang/String;

    const-string/jumbo v1, "Make"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Make:Ljava/lang/String;

    const-string/jumbo v1, "Model"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->Model:Ljava/lang/String;

    const-string/jumbo v1, "FocalLength"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->FocalLength:Ljava/lang/String;

    const-string/jumbo v1, "WhiteBalance"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->WhiteBalance:Ljava/lang/String;

    const-string/jumbo v1, "GPSAltitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsAltitude:Ljava/lang/String;

    const-string/jumbo v1, "GPSAltitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    const-string/jumbo v1, "GPSDateStamp"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsDateStamp:Ljava/lang/String;

    const-string/jumbo v1, "GPSLatitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLatitude:Ljava/lang/String;

    const-string/jumbo v1, "GPSLatitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    const-string/jumbo v1, "GPSLongitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLongitude:Ljava/lang/String;

    const-string/jumbo v1, "GPSLongitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    const-string/jumbo v1, "GPSProcessingMethod"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsProcessMethod:Ljava/lang/String;

    const-string/jumbo v1, "GPSTimeStamp"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->gpsTimeStamp:Ljava/lang/String;

    const-string/jumbo v1, "ImageWidth"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->imageWidth:Ljava/lang/String;

    const-string/jumbo v1, "ImageLength"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceExifInformation;->imageHeight:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
