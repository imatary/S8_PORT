.class public Lcom/android/keyguard/sec/FontEffectUtil;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;,
        Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;,
        Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;,
        Lcom/android/keyguard/sec/FontEffectUtil$Stroke;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontEffectParsingInfo"

.field private static mInstance:Lcom/android/keyguard/sec/FontEffectUtil;


# instance fields
.field public mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

.field public mIsSetDropShadow:Z

.field public mIsSetLinearGradient:Z

.field public mIsSetOuterGlow:Z

.field public mIsSetStroke:Z

.field public mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

.field public mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

.field public mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    goto :goto_0
.end method

.method private isAvailable()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FontEffectParsingInfo"

    const-string/jumbo v1, "Font effect is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private parseStringToColor(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parsingFontEffectString(Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "|"

    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/sec/FontEffectUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    const-string/jumbo v1, "FontEffectParsingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isparsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    const-string/jumbo v5, "FontEffectParsingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EFFECT_SPLIT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-nez v5, :cond_3

    :goto_1
    aget-object v4, v3, v0

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FontEffectParsingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EFFECT_SPLIT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    iget-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-nez v5, :cond_4

    :goto_2
    aget-object v4, v3, v8

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FontEffectParsingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EFFECT_SPLIT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    iget-boolean v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v5, :cond_5

    :goto_3
    aget-object v4, v3, v2

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FontEffectParsingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EFFECT_SPLIT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v4, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->scale:F

    aget-object v3, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v6, v3, [I

    iput-object v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v6, v3, [F

    iput-object v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v6, v3, [F

    iput-object v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    :goto_4
    if-lt v1, v3, :cond_6

    array-length v1, v4

    if-lt v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->offset:F

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->softness:F

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->blendingOpacity:F

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->size:F

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v6, v4, v8

    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->color:I

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->blendingOpacity:F

    goto/16 :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->size:F

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v6, v4, v8

    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->color:I

    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->blendingOpacity:F

    goto/16 :goto_3

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v5, v5, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    add-int/lit8 v6, v2, 0x1

    aget-object v2, v4, v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v2, v2, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    add-int/lit8 v5, v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v2, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v6, v2, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    add-int/lit8 v2, v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    goto/16 :goto_0
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/keyguard/sec/FontEffectUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_2

    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_3

    :goto_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-nez v0, :cond_4

    :goto_3
    return-void

    :cond_0
    return-void

    :cond_1
    const/high16 v1, 0x43120000    # 146.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v2, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->offset:F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v3, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->softness:F

    const/high16 v4, -0x1000000

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v5, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v0, v0, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->size:F

    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v1, v1, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->color:I

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v2, v2, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v0, v0, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->size:F

    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v1, v1, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->color:I

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v2, v2, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto :goto_2

    :cond_4
    const/high16 v1, 0x42b40000    # 90.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget v2, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->scale:F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v3, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v4, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v5, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget v6, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_3
.end method
