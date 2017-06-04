.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;
.super Landroid/util/LruCache;
.source "SlinkLruImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;->sizeOf(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;)I
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
