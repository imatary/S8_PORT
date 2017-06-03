.class public Llibcore/io/ClassPathURLStreamHandler;
.super Lsun/net/www/protocol/jar/Handler;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
    }
.end annotation


# instance fields
.field private final fileUri:Ljava/lang/String;

.field private final jarFile:Ljava/util/jar/JarFile;


# direct methods
.method static synthetic -get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;
    .locals 1

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/net/www/protocol/jar/Handler;-><init>()V

    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    return-void
.end method

.method static findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    return-void
.end method

.method public getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-static {v0, p1}, Llibcore/io/ClassPathURLStreamHandler;->findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "jar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid entry name"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v1
.end method

.method public isEntryStored(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-direct {v0, p0, p1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;-><init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V

    return-object v0
.end method
