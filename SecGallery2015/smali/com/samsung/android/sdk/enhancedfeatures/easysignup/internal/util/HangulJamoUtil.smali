.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;
.super Ljava/lang/Object;
.source "HangulJamoUtil.java"


# static fields
.field public static BOKJAUM:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation
.end field

.field public static BOKMOUM:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CHOSEONG:[C

.field private static final INITIAL_SOUND:[C

.field public static final JONGSEONG:[C

.field public static final JUNGSEONG:[C

.field private static initialString:Ljava/lang/StringBuffer;

.field private static searchInitialString:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0xd

    const/16 v5, 0x13

    const/16 v4, 0x8

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->INITIAL_SOUND:[C

    new-array v1, v5, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->CHOSEONG:[C

    const/16 v1, 0x15

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x3

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x16

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x5

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1b

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x6

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0x9

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x10

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xa

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x11

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xb

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xc

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x19

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v2, v2, v6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1a

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xe

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1b

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xf

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x11

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0x12

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0x9

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xa

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xb

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xe

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/4 v2, 0x5

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xf

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0x10

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x12

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v2, v2, v5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    return-void

    :array_0
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    nop

    :array_2
    .array-data 2
        0x314fs
        0x3150s
        0x3151s
        0x3152s
        0x3153s
        0x3154s
        0x3155s
        0x3156s
        0x3157s
        0x3158s
        0x3159s
        0x315as
        0x315bs
        0x315cs
        0x315ds
        0x315es
        0x315fs
        0x3160s
        0x3161s
        0x3162s
        0x3163s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x0s
        0x3131s
        0x3132s
        0x3133s
        0x3134s
        0x3135s
        0x3136s
        0x3137s
        0x3139s
        0x313as
        0x313bs
        0x313cs
        0x313ds
        0x313es
        0x313fs
        0x3140s
        0x3141s
        0x3142s
        0x3144s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method private static charsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertBokJaum(C)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static convertBokMoum(C)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_4

    move v8, v9

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v9, :cond_5

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :cond_5
    if-eq v3, v12, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v8, v9

    goto/16 :goto_0

    :cond_8
    move v8, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "****** SEARCH EXCEPTION : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "HangulJamoUtil"

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static split(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->charsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static split(C)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const v5, 0xac00

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-lt p0, v5, :cond_1

    const v4, 0xd7a3

    if-gt p0, v4, :cond_1

    sub-int v3, p0, v5

    div-int/lit16 v1, v3, 0x24c

    rem-int/lit16 v3, v3, 0x24c

    div-int/lit8 v2, v3, 0x1c

    rem-int/lit8 v3, v3, 0x1c

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->CHOSEONG:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v4, v4, v2

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->convertBokMoum(C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v3, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v4, v4, v3

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->convertBokJaum(C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
