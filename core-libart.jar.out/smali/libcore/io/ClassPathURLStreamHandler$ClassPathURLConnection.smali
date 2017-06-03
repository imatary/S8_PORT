.class Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
.super Ljava/net/JarURLConnection;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/ClassPathURLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassPathURLConnection"
.end annotation


# instance fields
.field private closed:Z

.field private connectionJarFile:Ljava/util/jar/JarFile;

.field private jarEntry:Ljava/util/zip/ZipEntry;

.field private jarInput:Ljava/io/InputStream;

.field final synthetic this$0:Llibcore/io/ClassPathURLStreamHandler;

.field private useCachedJarFile:Z


# direct methods
.method static synthetic -get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;
    .locals 1

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static synthetic -get1(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z
    .locals 1

    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    return v0
.end method

.method static synthetic -set0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    return p1
.end method

.method public constructor <init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-direct {p0, p2}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/io/ClassPathURLStreamHandler;->findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL does not correspond to an entry in the zip file. URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", zipfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v2}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getUseCaches()Z

    move-result v0

    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    :cond_1
    return-void
.end method

.method public getContentLength()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "content/unknown"

    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    return-object v0

    :cond_1
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;

    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;-><init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    :goto_0
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    goto :goto_0
.end method
