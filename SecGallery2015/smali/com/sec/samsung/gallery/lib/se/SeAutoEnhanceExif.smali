.class public Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;
.super Ljava/lang/Object;
.source "SeAutoEnhanceExif.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/AutoEnhanceExifInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SeAutoEnhanceExif"


# instance fields
.field private Aperture:Ljava/lang/String;

.field private Exposure:Ljava/lang/String;

.field private FocalLength:Ljava/lang/String;

.field private ISO:Ljava/lang/String;

.field private Make:Ljava/lang/String;

.field private Model:Ljava/lang/String;

.field private WhiteBalance:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private flashInfo:Ljava/lang/String;

.field private gpsAltitude:Ljava/lang/String;

.field private gpsAltitudeRef:Ljava/lang/String;

.field private gpsDateStamp:Ljava/lang/String;

.field private gpsLatitude:Ljava/lang/String;

.field private gpsLatitudeRef:Ljava/lang/String;

.field private gpsLongitude:Ljava/lang/String;

.field private gpsLongitudeRef:Ljava/lang/String;

.field private gpsProcessMethod:Ljava/lang/String;

.field private gpsTimeStamp:Ljava/lang/String;

.field private imageHeight:Ljava/lang/String;

.field private imageWidth:Ljava/lang/String;

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExifInterface(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Flash"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->flashInfo:Ljava/lang/String;

    const-string/jumbo v2, "DateTime"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->dateTime:Ljava/lang/String;

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->orientation:I

    const-string/jumbo v2, "FNumber"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Aperture:Ljava/lang/String;

    const-string/jumbo v2, "ISOSpeedRatings"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->ISO:Ljava/lang/String;

    const-string/jumbo v2, "ExposureTime"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Exposure:Ljava/lang/String;

    const-string/jumbo v2, "Make"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Make:Ljava/lang/String;

    const-string/jumbo v2, "Model"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Model:Ljava/lang/String;

    const-string/jumbo v2, "FocalLength"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->FocalLength:Ljava/lang/String;

    const-string/jumbo v2, "WhiteBalance"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->WhiteBalance:Ljava/lang/String;

    const-string/jumbo v2, "GPSAltitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsAltitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSAltitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsAltitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSDateStamp"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsDateStamp:Ljava/lang/String;

    const-string/jumbo v2, "GPSLatitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLatitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSLatitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLatitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSLongitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLongitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLongitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSProcessingMethod"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsProcessMethod:Ljava/lang/String;

    const-string/jumbo v2, "GPSTimeStamp"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsTimeStamp:Ljava/lang/String;

    const-string/jumbo v2, "ImageWidth"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->imageWidth:Ljava/lang/String;

    const-string/jumbo v2, "ImageLength"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->imageHeight:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ExifInformation"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->orientation:I

    return v0
.end method

.method public setExifInterface(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    const-string/jumbo v3, "Orientation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSAltitude"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsAltitude:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSAltitudeRef"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsAltitudeRef:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSDateStamp"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsDateStamp:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "DateTime"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->dateTime:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSLatitude"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLatitude:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSLatitudeRef"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLatitudeRef:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSLongitude"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLongitude:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSLongitudeRef"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsLongitudeRef:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSProcessingMethod"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsProcessMethod:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "GPSTimeStamp"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->gpsTimeStamp:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "FNumber"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Aperture:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ISOSpeedRatings"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->ISO:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ExposureTime"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Exposure:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Make"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Make:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Model"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->Model:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "FocalLength"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->FocalLength:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "WhiteBalance"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->WhiteBalance:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ImageWidth"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->imageWidth:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ImageLength"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->imageHeight:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Flash"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->flashInfo:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/se/SeAutoEnhanceExif;->setExifAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SeAutoEnhanceExif"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "SeAutoEnhanceExif"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
