.class Lcom/amap/api/services/a/co$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/co$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/co$a;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/co$a;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/co$a$a;->a:Lcom/amap/api/services/a/co$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/co$a;Ljava/io/OutputStream;Lcom/amap/api/services/a/co$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/co$a$a;-><init>(Lcom/amap/api/services/a/co$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->a:Lcom/amap/api/services/a/co$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/co$a;->a(Lcom/amap/api/services/a/co$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->a:Lcom/amap/api/services/a/co$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/co$a;->a(Lcom/amap/api/services/a/co$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->a:Lcom/amap/api/services/a/co$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/co$a;->a(Lcom/amap/api/services/a/co$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/services/a/co$a$a;->a:Lcom/amap/api/services/a/co$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/co$a;->a(Lcom/amap/api/services/a/co$a;Z)Z

    goto :goto_0
.end method
