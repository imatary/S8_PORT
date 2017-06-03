.class public final Landroid/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer$CharsAppendable;,
        Landroid/icu/text/Normalizer$CmpEquivLevel;,
        Landroid/icu/text/Normalizer$FCD32ModeImpl;,
        Landroid/icu/text/Normalizer$FCDMode;,
        Landroid/icu/text/Normalizer$FCDModeImpl;,
        Landroid/icu/text/Normalizer$Mode;,
        Landroid/icu/text/Normalizer$ModeImpl;,
        Landroid/icu/text/Normalizer$NFC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFCMode;,
        Landroid/icu/text/Normalizer$NFCModeImpl;,
        Landroid/icu/text/Normalizer$NFD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFDMode;,
        Landroid/icu/text/Normalizer$NFDModeImpl;,
        Landroid/icu/text/Normalizer$NFKC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKCMode;,
        Landroid/icu/text/Normalizer$NFKCModeImpl;,
        Landroid/icu/text/Normalizer$NFKD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKDMode;,
        Landroid/icu/text/Normalizer$NFKDModeImpl;,
        Landroid/icu/text/Normalizer$NONEMode;,
        Landroid/icu/text/Normalizer$QuickCheckResult;,
        Landroid/icu/text/Normalizer$Unicode32;
    }
.end annotation


# static fields
.field public static final COMPARE_CODE_POINT_ORDER:I = 0x8000

.field private static final COMPARE_EQUIV:I = 0x80000

.field public static final COMPARE_IGNORE_CASE:I = 0x10000

.field public static final COMPARE_NORM_OPTIONS_SHIFT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FCD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field public static final IGNORE_HANGUL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_IS_FCD:I = 0x20000

.field public static final MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NFC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NONE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_OP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_3_2:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YES:Landroid/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private bufferPos:I

.field private currentIndex:I

.field private mode:Landroid/icu/text/Normalizer$Mode;

.field private nextIndex:I

.field private norm2:Landroid/icu/text/Normalizer2;

.field private options:I

.field private text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/Normalizer$NONEMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NONEMode;-><init>(Landroid/icu/text/Normalizer$NONEMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$NFDMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFDMode;-><init>(Landroid/icu/text/Normalizer$NFDMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$NFKDMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFKDMode;-><init>(Landroid/icu/text/Normalizer$NFKDMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$NFCMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFCMode;-><init>(Landroid/icu/text/Normalizer$NFCMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DEFAULT:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$NFKCMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFKCMode;-><init>(Landroid/icu/text/Normalizer$NFKCMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$FCDMode;

    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$FCDMode;-><init>(Landroid/icu/text/Normalizer$FCDMode;)V

    sput-object v0, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->NO_OP:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP:Landroid/icu/text/Normalizer$Mode;

    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;

    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    sput-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    sput-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    iput-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-static {v0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearBuffer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return-void
.end method

.method static cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 28

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x80000

    and-int v26, v26, p2

    if-eqz v26, :cond_2

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    move-object/from16 v19, v0

    :goto_0
    const/high16 v26, 0x10000

    and-int v26, v26, p2

    if-eqz v26, :cond_3

    sget-object v7, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const/16 v20, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v22, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v18

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    :goto_2
    if-gez v3, :cond_0

    :goto_3
    move/from16 v21, v20

    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v13, :cond_5

    const/4 v3, -0x1

    move/from16 v20, v21

    :cond_0
    :goto_4
    if-gez v4, :cond_1

    :goto_5
    move/from16 v23, v22

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-nez v15, :cond_7

    const/4 v4, -0x1

    move/from16 v22, v23

    :cond_1
    :goto_6
    if-ne v3, v4, :cond_9

    if-gez v3, :cond_8

    const/16 v26, 0x0

    return v26

    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v20, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, -0x1

    aget-object v26, v24, v13

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    if-eqz p0, :cond_5

    aget-object v26, v24, v13

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    move/from16 v20, v0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    goto :goto_3

    :cond_6
    add-int/lit8 v22, v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_6

    :cond_7
    add-int/lit8 v15, v15, -0x1

    aget-object v26, v25, v15

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move-object/from16 p1, v0

    if-eqz p1, :cond_7

    aget-object v26, v25, v15

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    move/from16 v22, v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v18

    goto :goto_5

    :cond_8
    const/4 v4, -0x1

    const/4 v3, -0x1

    goto :goto_2

    :cond_9
    if-gez v3, :cond_a

    const/16 v26, -0x1

    return v26

    :cond_a
    if-gez v4, :cond_b

    const/16 v26, 0x1

    return v26

    :cond_b
    move v5, v3

    int-to-char v0, v3

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_10

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_c

    int-to-char v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    :cond_c
    :goto_7
    move v6, v4

    int-to-char v0, v4

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_11

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_d

    int-to-char v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    :cond_d
    :goto_8
    if-nez v13, :cond_14

    const/high16 v26, 0x10000

    and-int v26, v26, p2

    if-eqz v26, :cond_14

    move/from16 v0, p2

    invoke-virtual {v7, v5, v10, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v12

    if-ltz v12, :cond_14

    int-to-char v0, v3

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_12

    add-int/lit8 v20, v20, 0x1

    :cond_e
    :goto_9
    if-nez v24, :cond_f

    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v24

    :cond_f
    const/16 v26, 0x0

    aget-object v26, v24, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    const/16 v26, 0x0

    aget-object v26, v24, v26

    move/from16 v0, v20

    move-object/from16 v1, v26

    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v13, v13, 0x1

    const/16 v26, 0x1f

    move/from16 v0, v26

    if-gt v12, v0, :cond_13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    sub-int v26, v26, v12

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_a
    move-object/from16 p0, v10

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v26, v20, -0x2

    if-ltz v26, :cond_c

    add-int/lit8 v26, v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_c

    int-to-char v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    goto/16 :goto_7

    :cond_11
    add-int/lit8 v26, v22, -0x2

    if-ltz v26, :cond_d

    add-int/lit8 v26, v22, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_d

    int-to-char v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v26, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto/16 :goto_9

    :cond_13
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_14
    if-nez v15, :cond_19

    const/high16 v26, 0x10000

    and-int v26, v26, p2

    if-eqz v26, :cond_19

    move/from16 v0, p2

    invoke-virtual {v7, v6, v11, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v12

    if-ltz v12, :cond_19

    int-to-char v0, v4

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_17

    add-int/lit8 v22, v22, 0x1

    :cond_15
    :goto_b
    if-nez v25, :cond_16

    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v25

    :cond_16
    const/16 v26, 0x0

    aget-object v26, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    const/16 v26, 0x0

    aget-object v26, v25, v26

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v15, v15, 0x1

    const/16 v26, 0x1f

    move/from16 v0, v26

    if-gt v12, v0, :cond_18

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    sub-int v26, v26, v12

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_c
    move-object/from16 p1, v11

    const/16 v22, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/4 v4, -0x1

    goto/16 :goto_2

    :cond_17
    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v26, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_b

    :cond_18
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_19
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v13, v0, :cond_1e

    const/high16 v26, 0x80000

    and-int v26, v26, p2

    if-eqz v26, :cond_1e

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    int-to-char v0, v3

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    add-int/lit8 v20, v20, 0x1

    :cond_1a
    :goto_d
    if-nez v24, :cond_1b

    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v24

    :cond_1b
    aget-object v26, v24, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    aget-object v26, v24, v13

    move/from16 v0, v20

    move-object/from16 v1, v26

    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v13, v13, 0x1

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v13, v0, :cond_1c

    add-int/lit8 v14, v13, 0x1

    aget-object v26, v24, v13

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move v13, v14

    :cond_1c
    move-object/from16 p0, v8

    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_1d
    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v26, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_d

    :cond_1e
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v15, v0, :cond_23

    const/high16 v26, 0x80000

    and-int v26, v26, p2

    if-eqz v26, :cond_23

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_23

    int-to-char v0, v4

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_1f

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v26

    if-eqz v26, :cond_22

    add-int/lit8 v22, v22, 0x1

    :cond_1f
    :goto_e
    if-nez v25, :cond_20

    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v25

    :cond_20
    aget-object v26, v25, v15

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    aget-object v26, v25, v15

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v15, v15, 0x1

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v15, v0, :cond_21

    add-int/lit8 v16, v15, 0x1

    aget-object v26, v25, v15

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move/from16 v15, v16

    :cond_21
    move-object/from16 p1, v9

    const/16 v22, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v4, -0x1

    goto/16 :goto_2

    :cond_22
    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v26, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_e

    :cond_23
    const v26, 0xd800

    move/from16 v0, v26

    if-lt v3, v0, :cond_27

    const v26, 0xd800

    move/from16 v0, v26

    if-lt v4, v0, :cond_27

    const v26, 0x8000

    and-int v26, v26, p2

    if-eqz v26, :cond_27

    const v26, 0xdbff

    move/from16 v0, v26

    if-gt v3, v0, :cond_24

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-nez v26, :cond_25

    :cond_24
    int-to-char v0, v3

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_28

    add-int/lit8 v26, v20, -0x1

    if-eqz v26, :cond_28

    add-int/lit8 v26, v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_28

    :cond_25
    :goto_f
    const v26, 0xdbff

    move/from16 v0, v26

    if-gt v4, v0, :cond_26

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-nez v26, :cond_27

    :cond_26
    int-to-char v0, v4

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_29

    add-int/lit8 v26, v22, -0x1

    if-eqz v26, :cond_29

    add-int/lit8 v26, v22, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_29

    :cond_27
    :goto_10
    sub-int v26, v3, v4

    return v26

    :cond_28
    add-int/lit16 v3, v3, -0x2800

    goto :goto_f

    :cond_29
    add-int/lit16 v4, v4, -0x2800

    goto :goto_10
.end method

.method public static compare(III)I
    .locals 3

    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x20000

    or-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare(ILjava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare([CII[CIII)I
    .locals 2

    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-lt p2, p1, :cond_0

    if-lt p5, p4, :cond_0

    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    sub-int v1, p5, p4

    invoke-static {p3, p4, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-static {v0, v1, p6}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare([C[CI)I
    .locals 2

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compose([CII[CIIZI)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v2, p2, p1

    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static compose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->compose([CII[CIIZI)I

    move-result v0

    return v0
.end method

.method public static compose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenate([CII[CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p6, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    if-ne p3, p6, :cond_1

    if-ge p4, p8, :cond_1

    if-ge p7, p5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "overlapping right and dst ranges"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v3, p2, p1

    add-int/2addr v3, p5

    sub-int/2addr v3, p4

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int v3, p2, p1

    invoke-virtual {v0, p0, p1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int v3, p5, p4

    invoke-static {p3, p4, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p9, p10}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int v3, p8, p7

    if-gt v1, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p6, p7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return v1

    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static concatenate(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static concatenate([C[CLandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/Normalizer$CmpEquivLevel;

    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    invoke-direct {v1, v3}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$CmpEquivLevel;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    invoke-direct {v1, v3}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$CmpEquivLevel;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static decompose([CII[CIIZI)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v2, p2, p1

    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static decompose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->decompose([CII[CIIZI)I

    move-result v0

    return v0
.end method

.method public static decompose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decompose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    goto :goto_0
.end method

.method private static final getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    goto :goto_0
.end method

.method public static getFC_NFKC_Closure(I[C)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/icu/text/Normalizer;->getFC_NFKC_Closure(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gt v1, v2, :cond_0

    invoke-virtual {v0, v3, v1, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    return v1
.end method

.method public static getFC_NFKC_Closure(I)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Landroid/icu/text/Normalizer$NFKCModeImpl;->-get0()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/text/Normalizer$ModeImpl;->-get0(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    move-result-object v5

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, v1, v8}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v2

    if-gez v2, :cond_2

    move-object v7, v5

    check-cast v7, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    iget-object v6, v7, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, p0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    return-object v7

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v5, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, ""

    return-object v7

    :cond_2
    const/16 v7, 0x1f

    if-le v2, v7, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private static internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9

    const/4 v8, 0x0

    ushr-int/lit8 v3, p2, 0x14

    const/high16 v6, 0x80000

    or-int/2addr p2, v6

    const/high16 v6, 0x20000

    and-int/2addr v6, p2

    if-eqz v6, :cond_0

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    :cond_0
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_3

    sget-object v6, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v6, v3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, p0}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v2, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p0, v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p0, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1, v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    :cond_2
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    return v6

    :cond_3
    sget-object v6, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v6, v3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v2

    goto :goto_0
.end method

.method public static isNormalized(ILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v0

    return v0
.end method

.method public static isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNormalized([CIILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v1, p2, p1

    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private nextNormalize()Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    iget v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iget v4, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    :cond_1
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v2, p2, p1

    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    invoke-virtual {p6, p7}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static normalize([C[CLandroid/icu/text/Normalizer$Mode;I)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I

    move-result v0

    return v0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private previousNormalize()Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    iget v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iget v4, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_1

    const v3, 0xffff

    if-gt v0, v3, :cond_3

    int-to-char v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iput v3, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int v1, p2, p1

    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    return-object v1
.end method

.method public static quickCheck([CLandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Landroid/icu/text/Normalizer;->quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer;

    iget-object v2, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UCharacterIterator;

    iput-object v2, v0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iget-object v2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput-object v2, v0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v2, p0, Landroid/icu/text/Normalizer;->options:I

    iput v2, v0, Landroid/icu/text/Normalizer;->options:I

    iget-object v2, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iput-object v2, v0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iput v2, v0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget v2, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v2, v0, Landroid/icu/text/Normalizer;->currentIndex:I

    iget v2, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v2, v0, Landroid/icu/text/Normalizer;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public current()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public endIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public first()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->next()I

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    return v0

    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getMode()Landroid/icu/text/Normalizer$Mode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    return-object v0
.end method

.method public getOption(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getText([C)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public last()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->previous()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v2, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public previous()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    if-gtz v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->previousNormalize()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public reset()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    iput v1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setIndex(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer;->setIndexOnly(I)V

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->current()I

    move-result v0

    return v0
.end method

.method public setIndexOnly(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    iput p1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput p1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setMode(Landroid/icu/text/Normalizer$Mode;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public setOption(IZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    :goto_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    return-void

    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    goto :goto_0
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Could not create a new UCharacterIterator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string/jumbo v3, "Could not clone the UCharacterIterator"

    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    iput-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void
.end method

.method public setText(Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void
.end method

.method public setText([C)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance([C)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void
.end method

.method public startIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
