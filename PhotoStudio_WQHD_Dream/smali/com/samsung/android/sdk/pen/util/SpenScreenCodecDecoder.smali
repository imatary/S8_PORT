.class public Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;
.super Ljava/lang/Object;
.source "SpenScreenCodecDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decode_file(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string v6, "SpenScreenCodecDecoder"

    const-string v7, "stream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to read stream"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v4

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    const/16 v7, -0x56

    if-ne v6, v7, :cond_2

    const/4 v6, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    array-length v6, v0

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decode_stream([BI)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    move-object v5, v4

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v5, v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method public static native decode_file(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public static native decode_stream([BI)Landroid/graphics/Bitmap;
.end method

.method public static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v10, "SpenScreenCodecDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t open raw resource. id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    :goto_0
    return-object v2

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x6

    :try_start_0
    new-array v8, v10, [B

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-eq v10, v11, :cond_1

    const-string v10, "SpenScreenCodecDecoder"

    const-string v11, "Failed to read stream 1."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    move-object v2, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_2

    aget-byte v10, v8, v12

    const/16 v11, 0x50

    if-ne v10, v11, :cond_2

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    const/16 v11, 0x52

    if-ne v10, v11, :cond_2

    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v2, v9

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    const/4 v10, 0x4

    aget-byte v10, v8, v10

    const/16 v11, -0x56

    if-ne v10, v11, :cond_5

    const/4 v10, 0x5

    aget-byte v10, v8, v10

    if-ne v10, v12, :cond_5

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-eq v10, v5, :cond_3

    const-string v10, "SpenScreenCodecDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read stream. length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v2, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    array-length v10, v1

    invoke-static {v1, v10}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decode_stream([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v10, "SpenScreenCodecDecoder"

    const-string v11, "Failed to create the bitmap"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move-object v2, v9

    goto/16 :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    const-string v10, "SpenScreenCodecDecoder"

    const-string v11, "fail to getDrawable."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    goto/16 :goto_0

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v3

    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_8
    move-exception v3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_3

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v9

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :goto_4
    throw v9

    :catch_a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
