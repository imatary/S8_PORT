.class public Lcom/sec/samsung/gallery/lib/se/SeUriImageRotation;
.super Ljava/lang/Object;
.source "SeUriImageRotation.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/UriRotationExifInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SeUriImageRotation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation(Ljava/io/InputStream;)I
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    const/16 v3, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x10e

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SeUriImageRotation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

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
