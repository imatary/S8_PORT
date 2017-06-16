.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;
.super Ljava/lang/Object;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPSInfo"
.end annotation


# instance fields
.field public final latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final latitudeRef:Ljava/lang/String;

.field public final latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeRef:Ljava/lang/String;

.field public final longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-object p6, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-object p7, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-object p8, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    return-void
.end method


# virtual methods
.method public getLatitudeAsDegreesNorth()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    add-double v0, v2, v4

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-double v0, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown latitude ref: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongitudeAsDegreesEast()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    add-double v0, v2, v4

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-double v0, v0

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown longitude ref: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GPS. Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " degrees, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " degrees, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
