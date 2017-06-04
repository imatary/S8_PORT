.class public Lcom/arcsoft/beautyface/ImageExif;
.super Ljava/lang/Object;
.source "ImageExif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArcSoft_ImageExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ArcSoft_ImageExif"

    const-string/jumbo v6, "cannot read exif"

    invoke-static {v5, v6}, Lcom/arcsoft/beautyface/ArcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setExifOrientation(Ljava/lang/String;I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    const-string/jumbo v5, "Orientation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "ArcSoft_ImageExif"

    const-string/jumbo v6, "cannot read exif"

    invoke-static {v5, v6}, Lcom/arcsoft/beautyface/ArcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
