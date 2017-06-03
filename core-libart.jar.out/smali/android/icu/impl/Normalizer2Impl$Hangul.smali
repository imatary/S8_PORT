.class public final Landroid/icu/impl/Normalizer2Impl$Hangul;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangul"
.end annotation


# static fields
.field public static final HANGUL_BASE:I = 0xac00

.field public static final HANGUL_COUNT:I = 0x2ba4

.field public static final HANGUL_END:I = 0xd7a3

.field public static final HANGUL_LIMIT:I = 0xd7a4

.field public static final JAMO_L_BASE:I = 0x1100

.field public static final JAMO_L_COUNT:I = 0x13

.field public static final JAMO_L_END:I = 0x1112

.field public static final JAMO_L_LIMIT:I = 0x1113

.field public static final JAMO_T_BASE:I = 0x11a7

.field public static final JAMO_T_COUNT:I = 0x1c

.field public static final JAMO_T_END:I = 0x11c2

.field public static final JAMO_VT_COUNT:I = 0x24c

.field public static final JAMO_V_BASE:I = 0x1161

.field public static final JAMO_V_COUNT:I = 0x15

.field public static final JAMO_V_END:I = 0x1175

.field public static final JAMO_V_LIMIT:I = 0x1176


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(ILjava/lang/Appendable;)I
    .locals 3

    const v2, 0xac00

    sub-int/2addr p0, v2

    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    div-int/lit8 p0, p0, 0x1c

    div-int/lit8 v2, p0, 0x15

    add-int/lit16 v2, v2, 0x1100

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    rem-int/lit8 v2, p0, 0x15

    add-int/lit16 v2, v2, 0x1161

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-nez v0, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    add-int/lit16 v2, v0, 0x11a7

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getRawDecomposition(ILjava/lang/Appendable;)V
    .locals 4

    move v2, p0

    const v3, 0xac00

    sub-int/2addr p0, v3

    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_0

    div-int/lit8 p0, p0, 0x1c

    div-int/lit8 v3, p0, 0x15

    add-int/lit16 v3, v3, 0x1100

    int-to-char v3, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    rem-int/lit8 v3, p0, 0x15

    add-int/lit16 v3, v3, 0x1161

    int-to-char v3, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void

    :cond_0
    sub-int v3, v2, v0

    int-to-char v3, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit16 v3, v0, 0x11a7

    int-to-char v3, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v3, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isHangul(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xac00

    if-gt v1, p0, :cond_0

    const v1, 0xd7a4

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHangulWithoutJamoT(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xac00

    sub-int v1, p0, v1

    int-to-char p0, v1

    const/16 v1, 0x2ba4

    if-ge p0, v1, :cond_0

    rem-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJamoL(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1100

    if-gt v1, p0, :cond_0

    const/16 v1, 0x1113

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJamoV(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1161

    if-gt v1, p0, :cond_0

    const/16 v1, 0x1176

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
