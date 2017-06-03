.class Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;
.super Ljava/io/FilterInputStream;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;


# direct methods
.method constructor <init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get1(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-set0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)Z

    goto :goto_0
.end method
