.class public Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;
.super Ljava/lang/Object;
.source "QuramCodecMetadata.java"


# instance fields
.field private cropOriginX:I

.field private cropOriginY:I

.field private cropSizeHeight:I

.field private cropSizeWidth:I

.field private imageHeight:I

.field private imageWidth:I

.field private make:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCropOriginX()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->cropOriginX:I

    return v0
.end method

.method public getCropOriginY()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->cropOriginY:I

    return v0
.end method

.method public getCropSizeHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->cropSizeHeight:I

    return v0
.end method

.method public getCropSizeWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->cropSizeWidth:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->imageWidth:I

    return v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/QuramCodecMetadata;->make:Ljava/lang/String;

    return-object v0
.end method
