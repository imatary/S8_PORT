.class public Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static chars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->initDefaultChars()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandom(I)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    if-gez p0, :cond_0

    move-object v6, v2

    :goto_0
    return-object v6

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v6, ""

    goto :goto_0

    :cond_1
    new-array v1, p0, [C

    sget-object v6, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->chars:[C

    array-length v0, v6

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v6, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->chars:[C

    aget-char v6, v6, v4

    aput-char v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0
.end method

.method private static initDefaultChars()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    sput-object v2, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->chars:[C

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->chars:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
