.class public Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;
.super Ljava/lang/Object;
.source "SpenBitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;
    }
.end annotation


# static fields
.field private static mIs64:Z

.field private static mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;",
            ">;"
        }
    .end annotation
.end field

.field private static mProtect:I

.field private static mRemoveReservedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    sput v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _createNativeBitmap(Landroid/graphics/Bitmap;)I
.end method

.method private static native _createNativeBitmap_64(Landroid/graphics/Bitmap;)J
.end method

.method private static native _deleteNativeAncenstor(I)V
.end method

.method private static native _deleteNativeAncenstor(J)V
.end method

.method private static native _getNativeBitmapRef(I)I
.end method

.method private static native _getNativeBitmapRef(J)I
.end method

.method private static bindBitmap(Landroid/graphics/Bitmap;)J
    .locals 8

    const-wide/16 v4, 0x0

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    :goto_0
    return-wide v4

    :cond_1
    sget v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez v3, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_0
.end method

.method private static bindMutableClone(I)J
    .locals 10

    const-wide/16 v4, 0x0

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v8, p0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    iget-wide v6, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-wide v4

    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v4, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_0
.end method

.method private static bitmapCount()I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;)J
    .locals 6

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    const-string v1, "BitmapManager"

    const-string v4, "createBitmap(bitmap==null) failed"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v2

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_0
.end method

.method private static createBitmap(Ljava/lang/String;II)J
    .locals 10

    const-wide/16 v6, 0x0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v5, "BitmapManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createBitmap("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-wide v6

    :cond_1
    const-string v5, "spd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, p1

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, p2

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v5

    int-to-long v8, v5

    iput-wide v8, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    iget-wide v8, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v6, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_2
.end method

.method private static createBitmap([IIIIZ)J
    .locals 7

    const-wide/16 v2, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "BitmapManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createBitmap(width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v2

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_createNativeBitmap(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    iget-wide v4, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    iget-wide v2, v1, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    goto :goto_0
.end method

.method private static decodeBitmapFile(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->bindBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static findBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v4, p0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static printLog()V
    .locals 3

    const-string v0, "BitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2193\u2193\u2193\u2193 Bitmap Manager (P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \u2193\u2193\u2193\u2193"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reserved Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BitmapManager"

    const-string v1, "\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191\u2191"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static protectRemoval()V
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    return-void
.end method

.method private static releaseBitmap(I)I
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v8, p0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v3, :cond_2

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(J)I

    move-result v2

    :goto_1
    if-ne v2, v5, :cond_5

    sget v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez v3, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    :goto_3
    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v3, v6

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(I)I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v3, :cond_4

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_2

    :cond_4
    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v3, v6

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    goto :goto_2

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    const/4 v4, -0x1

    goto :goto_3
.end method

.method private static releaseBitmap(Landroid/graphics/Bitmap;)I
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v3, :cond_2

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(J)I

    move-result v2

    :goto_1
    if-ne v2, v5, :cond_5

    sget v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-lez v3, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->printLog()V

    :goto_3
    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v3, v6

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_getNativeBitmapRef(I)I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v3, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v3, :cond_4

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_2

    :cond_4
    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v3, v6

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    goto :goto_2

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    const/4 v4, -0x1

    goto :goto_3
.end method

.method private static saveBitmap(ILjava/lang/String;)Z
    .locals 12

    sget-object v7, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-wide v8, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    int-to-long v10, p0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    move-object v5, v6

    :cond_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v7, "BitmapManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveBitmap("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "BitmapManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveBitmap("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v7, "BitmapManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveBitmap("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v8, "BitmapManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmap("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v5, v6

    goto :goto_1
.end method

.method private static unprotectRemoval()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    sget v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    sget v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mProtect:I

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->jbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mIs64:Z

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(J)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager$Info;->handle:J

    long-to-int v2, v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->_deleteNativeAncenstor(I)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/pen/util/SpenBitmapManager;->mRemoveReservedList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void
.end method
