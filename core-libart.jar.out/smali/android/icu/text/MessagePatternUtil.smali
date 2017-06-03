.class public final Landroid/icu/text/MessagePatternUtil;
.super Ljava/lang/Object;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$ArgNode;,
        Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;,
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode;,
        Landroid/icu/text/MessagePatternUtil$MessageNode;,
        Landroid/icu/text/MessagePatternUtil$Node;,
        Landroid/icu/text/MessagePatternUtil$TextNode;,
        Landroid/icu/text/MessagePatternUtil$VariantNode;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-MessagePattern$ArgTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getandroid-icu-text-MessagePattern$ArgTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/MessagePatternUtil;->-android-icu-text-MessagePattern$ArgTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/MessagePatternUtil;->-android-icu-text-MessagePattern$ArgTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/icu/text/MessagePatternUtil;->-android-icu-text-MessagePattern$ArgTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 6

    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-wrap0()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set0(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set2(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set3(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {}, Landroid/icu/text/MessagePatternUtil;->-getandroid-icu-text-MessagePattern$ArgTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    if-ge v3, p2, :cond_1

    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set4(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move p1, v3

    goto :goto_0

    :pswitch_1
    const-string/jumbo v4, "choice"

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "plural"

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v4, "select"

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v4, "selectordinal"

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->-set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {v1, v7, v8}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    :goto_0
    if-ge p1, p2, :cond_0

    move v3, p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    new-instance v6, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v6, v8}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6, v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-static {v1, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v7

    return-object v7
.end method

.method public static buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The MessagePattern is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The MessagePattern does not represent a MessageFormat pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0, v3, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v1

    return-object v1
.end method

.method private static buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    new-instance v2, Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-direct {v2, v9}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageNode;)V

    add-int/lit8 v1, p1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    if-ge v6, v5, :cond_0

    new-instance v7, Landroid/icu/text/MessagePatternUtil$TextNode;

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil$TextNode;)V

    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    :cond_0
    if-ne v1, p2, :cond_1

    invoke-static {v2}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v7

    return-object v7

    :cond_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_3

    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePatternUtil;->buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    move v1, v0

    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_2

    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->-wrap0()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/icu/text/MessagePatternUtil$MessageNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    goto :goto_1
.end method

.method public static buildMessageNode(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p0}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v0

    return-object v0
.end method

.method private static buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 12

    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    const/4 v9, 0x0

    invoke-direct {v1, p3, v9}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-static {v1, v9}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-set0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z

    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v10

    invoke-static {v1, v10, v11}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-set1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D

    add-int/lit8 p1, p1, 0x1

    move v5, p1

    :goto_0
    if-ge v5, p2, :cond_1

    add-int/lit8 p1, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    const-wide v6, -0x3e6290cbac000000L    # -1.23456789E8

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v6

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    new-instance v8, Landroid/icu/text/MessagePatternUtil$VariantNode;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v8, v6, v7}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-static {v1, v8}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v0, 0x1

    move v5, p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v9

    return-object v9

    :cond_2
    move v5, p1

    goto :goto_0
.end method

.method private static buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {v1, v5, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V

    move v3, p1

    :goto_0
    if-ge v3, p2, :cond_0

    add-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    new-instance v4, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v4, v6}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->-set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-static {v1, v4}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v0, 0x1

    move v3, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->-wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v5

    return-object v5
.end method
