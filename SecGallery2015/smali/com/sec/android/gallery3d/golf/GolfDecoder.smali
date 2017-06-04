.class Lcom/sec/android/gallery3d/golf/GolfDecoder;
.super Ljava/lang/Object;
.source "GolfDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GolfDecoder"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGolfFile(Ljava/lang/String;Z)V
    .locals 18

    const/4 v8, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v10, v0

    new-array v2, v10, [B

    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v10}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-gtz v12, :cond_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    :goto_0
    return-void

    :cond_0
    :try_start_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    move-result v13

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v14

    const/4 v15, 0x1

    if-lt v13, v15, :cond_1

    const/4 v15, 0x4

    if-ge v14, v15, :cond_2

    :cond_1
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    if-eqz p1, :cond_3

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    if-gtz v11, :cond_3

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_1
    :try_start_5
    const-string/jumbo v15, "GolfDecoder"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    :goto_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v15

    :catchall_1
    move-exception v15

    move-object v8, v9

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v8, v9

    goto :goto_1
.end method
