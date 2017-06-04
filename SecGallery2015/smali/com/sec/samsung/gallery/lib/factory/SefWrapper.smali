.class public Lcom/sec/samsung/gallery/lib/factory/SefWrapper;
.super Ljava/lang/Object;
.source "SefWrapper.java"


# static fields
.field public static final OVERWRITE_IF_EXISTS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/lib/se/SeSef;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    move-result v0

    return v0
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/lib/se/SeSef;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeSef;->checkAudioInJPEG(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyAllData(Ljava/io/File;Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->copyAllData(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static deleteAllData(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeSef;->deleteAllData(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDataCount(Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeSef;->getDataCount(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static getQdioLength(Ljava/lang/Object;ILjava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/lib/se/SeSef;->getQdioLength(Ljava/lang/Object;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQdioStartOffset(Ljava/lang/Object;ILjava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/lib/se/SeSef;->getQdioStartOffset(Ljava/lang/Object;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasData(Ljava/io/File;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->hasData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static hasData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeSef;->hasData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeSef;->isValidFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
