.class public Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;
.super Ljava/lang/Object;
.source "HideFileScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifInformation"
.end annotation


# instance fields
.field public dateTime:Ljava/lang/String;

.field public gpsAltitude:Ljava/lang/String;

.field public gpsAltitudeRef:Ljava/lang/String;

.field public gpsDateStamp:Ljava/lang/String;

.field public gpsLatitude:Ljava/lang/String;

.field public gpsLatitudeRef:Ljava/lang/String;

.field public gpsLongitude:Ljava/lang/String;

.field public gpsLongitudeRef:Ljava/lang/String;

.field public gpsProcessMethod:Ljava/lang/String;

.field public gpsTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "DateTime"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->dateTime:Ljava/lang/String;

    const-string/jumbo v2, "GPSAltitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSAltitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSDateStamp"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    const-string/jumbo v2, "GPSLatitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSLatitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSLongitude"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitude:Ljava/lang/String;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    const-string/jumbo v2, "GPSProcessingMethod"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    const-string/jumbo v2, "GPSTimeStamp"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/HideFileScanner$ExifInformation;->gpsTimeStamp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "HideFileScanner"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
