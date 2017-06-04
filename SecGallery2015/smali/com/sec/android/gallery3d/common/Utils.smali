.class public Lcom/sec/android/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INITIALCRC:J = -0x1L

.field private static final LONG_DELAY:I = 0xdac

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final mMainHandler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;

.field private static final sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x100

    new-array v6, v8, [J

    sput-object v6, Lcom/sec/android/gallery3d/common/Utils;->sCrcTable:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_2

    int-to-long v2, v0

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v6, Lcom/sec/android/gallery3d/common/Utils;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/sec/android/gallery3d/common/Utils;->cancelNoMediaToast()V

    return-void
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static addNamePostfix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static addPostfix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static assertTrue(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static cancelNoMediaToast()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    :goto_0
    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static crc64Long(Ljava/lang/String;)J
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static crc64Long([B)J
    .locals 8

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    return-object p0
.end method

.method public static equals(DD)Z
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/Utils;->equals(DDD)Z

    move-result v0

    return v0
.end method

.method private static equals(DDD)Z
    .locals 2

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(FF)Z
    .locals 1

    const v0, 0x3a83126f    # 0.001f

    invoke-static {p0, p1, v0}, Lcom/sec/android/gallery3d/common/Utils;->equals(FFF)Z

    move-result v0

    return v0
.end method

.method private static equals(FFF)Z
    .locals 1

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-char v0, v5, v4

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "*/*"

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "image/*"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "video/*"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getResIdFromFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/gallery3d/common/Utils$3;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$MediaFilterType:[I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0a02dc

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a02e6

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0151

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isAlmostEquals(FF)Z
    .locals 2

    sub-float v0, p0, p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 3

    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nextPowerOf2 throw IllegalArgumentException n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 3

    if-gtz p0, :cond_0

    const-string/jumbo v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prevPowerOf2 throw IllegalArgumentException n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {p0, v0, p2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    new-instance v0, Lcom/sec/android/gallery3d/common/Utils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/gallery3d/common/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/common/Utils$2;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/common/Utils$2;-><init>()V

    packed-switch p2, :pswitch_data_0

    int-to-long v2, p2

    :goto_1
    sget v4, Lcom/sec/samsung/gallery/lib/factory/ToastWrapper;->LENGTH_LONG_DOUBLE:I

    if-ne p2, v4, :cond_0

    const-wide/16 v2, 0x1b58

    :cond_0
    sget-object v4, Lcom/sec/android/gallery3d/common/Utils;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    add-long/2addr v6, v2

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    sget-object v4, Lcom/sec/android/gallery3d/common/Utils;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, 0x7d0

    goto :goto_1

    :pswitch_1
    const-wide/16 v2, 0xdac

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/common/Utils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Utils"

    const-string/jumbo v1, "already showing toast"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static showToastLongDouble(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/sec/samsung/gallery/lib/factory/ToastWrapper;->LENGTH_LONG_DOUBLE:I

    const v1, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static timedWaitWithoutInterrupt(Ljava/lang/Object;J)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
