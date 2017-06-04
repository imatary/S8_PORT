.class Lcom/sec/samsung/gallery/view/detailview/spherical/XmpUtils;
.super Ljava/lang/Object;
.source "XmpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmpUtils"

.field private static final XMP_PLAYBACK_DIRECTION_TAG:Ljava/lang/String; = "DIRECTION"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ReadFromXMP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string/jumbo v4, "DIRECTION"

    invoke-interface {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string/jumbo v4, "DIRECTION"

    invoke-interface {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "XmpUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ReadFromXMP: XMP parse error:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static writeToXMP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->createXMPMeta()Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v2

    :cond_2
    const-string/jumbo v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string/jumbo v4, "DIRECTION"

    invoke-interface {v2, v3, v4, p1}, Lcom/adobe/internal/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPMeta;)Z
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "XmpUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeToXMP: XMP parse error:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
