.class public final Lcom/android/dex/DexFormat;
.super Ljava/lang/Object;
.source "DexFormat.java"


# static fields
.field public static final API_CURRENT:I = 0x18

.field public static final API_NO_EXTENDED_OPCODES:I = 0xd

.field public static final DEX_IN_JAR_NAME:Ljava/lang/String; = "classes.dex"

.field public static final ENDIAN_TAG:I = 0x12345678

.field public static final MAGIC_PREFIX:Ljava/lang/String; = "dex\n"

.field public static final MAGIC_SUFFIX:Ljava/lang/String; = "\u0000"

.field public static final MAX_MEMBER_IDX:I = 0xffff

.field public static final MAX_TYPE_IDX:I = 0xffff

.field public static final VERSION_CURRENT:Ljava/lang/String; = "037"

.field public static final VERSION_FOR_API_13:Ljava/lang/String; = "035"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x18

    if-lt p0, v1, :cond_0

    const-string/jumbo v0, "037"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dex\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v0, "035"

    goto :goto_0
.end method

.method public static isSupportedDexMagic([B)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static magicToApi([B)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    array-length v1, p0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    aget-byte v1, p0, v4

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    return v1

    :cond_3
    const-string/jumbo v1, "035"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    return v1

    :cond_4
    return v3
.end method
