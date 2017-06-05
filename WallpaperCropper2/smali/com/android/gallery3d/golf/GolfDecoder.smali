.class public Lcom/android/gallery3d/golf/GolfDecoder;
.super Ljava/lang/Object;
.source "GolfDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGolfFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    const/4 v0, 0x1

    if-lt v3, v0, :cond_1

    const/4 v0, 0x4

    if-ge v6, v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v9

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :cond_3
    move v4, v0

    :try_start_4
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    if-lt v3, v0, :cond_6

    const/4 v0, 0x2

    if-lt v6, v0, :cond_6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    sub-int/2addr v1, v9

    sub-int/2addr v1, v4

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v1, v9

    new-array v7, v1, [I

    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    if-eqz p2, :cond_4

    add-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v9

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_6

    add-int v1, v4, v9

    if-ne v0, v1, :cond_5

    aget v1, v7, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-int v1, v6, v1

    :goto_2
    :try_start_5
    new-array v10, v1, [B

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    aget v12, v7, v3

    const/4 v13, 0x0

    invoke-static {v11, v12, v10, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8, v1, v10}, Lcom/android/gallery3d/golf/GolfDecoder;->saveBufferToFile(Ljava/lang/String;II[B)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v3, 0x1

    :try_start_6
    aget v1, v7, v1

    aget v10, v7, v3

    sub-int/2addr v1, v10

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_5
    return-void

    :cond_6
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method private static saveBufferToFile(Ljava/lang/String;II[B)V
    .locals 4

    const-string/jumbo v0, ".jpg"

    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, p3, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method
