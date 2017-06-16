.class public Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# static fields
.field private static EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field private static FLAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAllMatches(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static getEmojiPattern()Ljava/util/regex/Pattern;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiList;->getEmoticonMap()[Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiList;->getEmoticonMap()[Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;->getEmoticonCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v1, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static getFlagPattern()Ljava/util/regex/Pattern;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiList;->getFlagCharMap()[Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiList;->getFlagCharMap()[Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiInfo;->getEmoticonCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v1, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static hasEmojiString(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->getEmojiPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static hasFlagString(Ljava/lang/CharSequence;)Z
    .locals 3

    :try_start_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->getFlagPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    const/high16 v12, 0x1f0000

    and-int/2addr v12, v9

    shr-int/lit8 v11, v12, 0x10

    add-int/lit8 v10, v11, -0x1

    const/4 v5, 0x0

    const v6, 0xdc00

    and-int/lit16 v12, v9, 0x3ff

    or-int v5, v6, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const v2, 0xd800

    const v12, 0xfc00

    and-int/2addr v12, v9

    shr-int/lit8 v12, v12, 0xa

    or-int v1, v2, v12

    shl-int/lit8 v12, v10, 0x6

    or-int/2addr v1, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
