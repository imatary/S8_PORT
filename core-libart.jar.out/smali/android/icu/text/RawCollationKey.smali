.class public final Landroid/icu/text/RawCollationKey;
.super Landroid/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/ByteArrayWrapper;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/RawCollationKey;)I
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
