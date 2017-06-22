.class public Lorg/apache/commons/imaging/common/SimpleBufferedImageFactory;
.super Ljava/lang/Object;
.source "SimpleBufferedImageFactory.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/BufferedImageFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    goto :goto_0
.end method

.method public getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    goto :goto_0
.end method
