.class Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;
.super Ljava/lang/Object;
.source "XmpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;
    }
.end annotation


# static fields
.field private static final END_OF_FILE:I = -0x1

.field static final GOOGLE_PANORAMA_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final MARKER_EXIF_OR_XMP:I = 0xe1

.field private static final MARKER_FILE_START:I = 0xd8

.field private static final MARKER_IMAGE_DATA:I = 0xda

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final PADDING_BYTE:I = 0xff

.field private static final PANORAMA_PREFIX:Ljava/lang/String; = "GPano"

.field private static final TAG:Ljava/lang/String; = "XMPDecoder"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string/jumbo v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string/jumbo v3, "GPano"

    invoke-interface {v1, v2, v3}, Lcom/adobe/internal/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XMPDecoder"

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XMPDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close fail:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static createXMPMeta()Lcom/adobe/internal/xmp/XMPMeta;
    .locals 1

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->create()Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method private static createXMPSection(Lcom/adobe/internal/xmp/XMPMeta;)Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x1d

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->getBufferFromXMPMeta(Lcom/adobe/internal/xmp/XMPMeta;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1d

    new-array v2, v4, [B

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    invoke-static {v1, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    const/16 v5, 0xe1

    array-length v6, v2

    add-int/2addr v6, v0

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;-><init>(II[BLcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$1;)V

    move-object v3, v4

    goto :goto_0
.end method

.method private static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 10

    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->getXMPContentEnd([B)I

    move-result v2

    add-int/lit8 v6, v2, -0x1d

    new-array v0, v6, [B

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B

    move-result-object v6

    const/16 v7, 0x1d

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-static {v0}, Lcom/adobe/internal/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/internal/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "XMPDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMP parse error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->isNotJPEG(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "XMPDecoder"

    const-string/jumbo v4, "XMP parse: Invalid arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/internal/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "XMPDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getBufferFromXMPMeta(Lcom/adobe/internal/xmp/XMPMeta;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/internal/xmp/options/SerializeOptions;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-static {p0, v2}, Lcom/adobe/internal/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/internal/xmp/XMPMeta;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B

    move-result-object v0

    array-length v3, v0
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0xffde

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "XMPDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBufferFromXMPMeta: Serialize xmp failed:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method private static getXMPContentEnd([B)I
    .locals 3

    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    goto :goto_1
.end method

.method private static getXmpSections(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPMeta;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/internal/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->createXMPSection(Lcom/adobe/internal/xmp/XMPMeta;)Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->insertXMPSection(Ljava/util/List;Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "XMPDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not read file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hasXMPHeader([B)Z
    .locals 6

    const/16 v4, 0x1d

    const/4 v2, 0x0

    array-length v3, p0

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x1d

    :try_start_0
    new-array v1, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "XMPDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasXMPHeader:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ">;",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ">;"
        }
    .end annotation

    const/16 v6, 0xe1

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mMarker:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$100(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->hasXMPHeader([B)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mMarker:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$100(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    if-ne v4, v6, :cond_4

    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    :goto_3
    invoke-interface {p0, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v2

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3
.end method

.method private static isNotJPEG(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ">;"
        }
    .end annotation

    const/16 v13, 0xff

    const/4 v9, 0x0

    const/4 v12, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v10

    if-ne v10, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    const/16 v11, 0xd8

    if-eq v10, v11, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    :goto_0
    return-object v8

    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eq v5, v12, :cond_a

    if-eq v5, v13, :cond_3

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eq v5, v13, :cond_3

    if-ne v5, v12, :cond_4

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :cond_4
    const/16 v10, 0xda

    if-ne v5, v10, :cond_6

    if-nez p1, :cond_5

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v10

    new-array v0, v10, [B

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {p0, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v12, :cond_5

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct {v7, v5, v10, v0, v11}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;-><init>(II[BLcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$1;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-ne v3, v12, :cond_7

    if-ne v4, v12, :cond_7

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :cond_7
    shl-int/lit8 v10, v3, 0x8

    or-int v2, v10, v4

    if-eqz p1, :cond_8

    const/16 v10, 0xe1

    if-ne v5, v10, :cond_9

    :cond_8
    add-int/lit8 v10, v2, -0x2

    :try_start_5
    new-array v0, v10, [B

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p0, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v12, :cond_2

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    const/4 v10, 0x0

    invoke-direct {v7, v5, v2, v0, v10}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;-><init>(II[BLcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$1;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v10, "XMPDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not parse file.\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v10, v2, -0x2

    int-to-long v10, v10

    :try_start_7
    invoke-virtual {p0, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    :cond_a
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xff

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    const/16 v3, 0xd8

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mMarker:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$100(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mLength:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    if-lez v4, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mLength:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    shr-int/lit8 v1, v4, 0x8

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mLength:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static writeXMPMeta(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPMeta;)Z
    .locals 8

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->isNotJPEG(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string/jumbo v5, "XMPDecoder"

    const-string/jumbo v6, "writeXMPMeta: Invalid arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->getXmpSections(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v5, "XMPDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeXMPMeta: Write file failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
