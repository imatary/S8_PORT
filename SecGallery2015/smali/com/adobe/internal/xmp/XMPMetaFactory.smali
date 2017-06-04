.class public final Lcom/adobe/internal/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# static fields
.field private static schema:Lcom/adobe/internal/xmp/XMPSchemaRegistry;

.field private static versionInfo:Lcom/adobe/internal/xmp/XMPVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/internal/xmp/XMPVersionInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertImplementation(Lcom/adobe/internal/xmp/XMPMeta;)V
    .locals 2

    instance-of v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static create()Lcom/adobe/internal/xmp/XMPMeta;
    .locals 1

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v0
.end method

.method public static getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;
    .locals 1

    sget-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    return-object v0
.end method

.method public static declared-synchronized getVersionInfo()Lcom/adobe/internal/xmp/XMPVersionInfo;
    .locals 16

    const-class v14, Lcom/adobe/internal/xmp/XMPMetaFactory;

    monitor-enter v14

    :try_start_0
    sget-object v13, Lcom/adobe/internal/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/internal/xmp/XMPVersionInfo;

    if-nez v13, :cond_2

    const-string/jumbo v1, "Test.SNAPSHOT"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_1
    const-class v13, Lcom/adobe/internal/xmp/XMPMetaFactory;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string/jumbo v15, "META-INF/MANIFEST.MF"

    invoke-virtual {v13, v15}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v4, Ljava/util/jar/Manifest;

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    const-string/jumbo v13, "com.adobe.xmp.xmpcore"

    const-string/jumbo v15, "Bundle-SymbolicName"

    invoke-virtual {v0, v15}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "Bundle-Version"

    invoke-virtual {v0, v13}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "Bundle-Version"

    invoke-virtual {v0, v13}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v13, "(\\d+)\\.(\\d+)\\.(\\d+).*"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    :cond_1
    :goto_0
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Adobe XMP Core "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v10, v9

    move v8, v7

    new-instance v13, Lcom/adobe/internal/xmp/XMPMetaFactory$1;

    invoke-direct {v13, v3, v10, v8, v6}, Lcom/adobe/internal/xmp/XMPMetaFactory$1;-><init>(IIILjava/lang/String;)V

    sput-object v13, Lcom/adobe/internal/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/internal/xmp/XMPVersionInfo;

    :cond_2
    sget-object v13, Lcom/adobe/internal/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/internal/xmp/XMPVersionInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v14

    return-object v13

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method public static parseFromBuffer([B)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/internal/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromBuffer([BLcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static serializeToBuffer(Lcom/adobe/internal/xmp/XMPMeta;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-static {p0}, Lcom/adobe/internal/xmp/XMPMetaFactory;->assertImplementation(Lcom/adobe/internal/xmp/XMPMeta;)V

    check-cast p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-static {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerHelper;->serializeToBuffer(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B

    move-result-object v0

    return-object v0
.end method
