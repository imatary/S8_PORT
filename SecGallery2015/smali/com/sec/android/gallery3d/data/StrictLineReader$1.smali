.class Lcom/sec/android/gallery3d/data/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/StrictLineReader;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->this$0:Lcom/sec/android/gallery3d/data/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    iget v2, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->count:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->buf:[B

    iget v3, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->count:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->count:I

    add-int/lit8 v1, v2, -0x1

    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->buf:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->this$0:Lcom/sec/android/gallery3d/data/StrictLineReader;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->access$000(Lcom/sec/android/gallery3d/data/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/data/StrictLineReader$1;->count:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
