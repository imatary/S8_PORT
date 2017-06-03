.class public final Landroid/icu/util/CopticCalendar;
.super Landroid/icu/util/CECalendar;
.source "CopticCalendar.java"


# static fields
.field public static final AMSHIR:I = 0x5

.field public static final BABA:I = 0x1

.field public static final BARAMHAT:I = 0x6

.field public static final BARAMOUDA:I = 0x7

.field public static final BASHANS:I = 0x8

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field public static final EPEP:I = 0xa

.field public static final HATOR:I = 0x2

.field private static final JD_EPOCH_OFFSET:I = 0x1bd799

.field public static final KIAHK:I = 0x3

.field public static final MESRA:I = 0xb

.field public static final NASIE:I = 0xc

.field public static final PAONA:I = 0x9

.field public static final TOBA:I = 0x4

.field public static final TOUT:I = 0x0

.field private static final serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/CECalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static copticToJD(JII)I
    .locals 2

    const v0, 0x1bd799

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/CopticCalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1bd799

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "coptic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    new-array v1, v3, [I

    invoke-virtual {p0}, Landroid/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v3

    invoke-static {p1, v3, v1}, Landroid/icu/util/CopticCalendar;->jdToCE(II[I)V

    aget v3, v1, v5

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    aget v3, v1, v5

    rsub-int/lit8 v2, v3, 0x1

    :goto_0
    aget v3, v1, v5

    const/16 v4, 0x13

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v5, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v6, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v6

    invoke-virtual {p0, v7, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v7

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v6

    mul-int/lit8 v3, v3, 0x1e

    aget v4, v1, v7

    add-int/2addr v3, v4

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    aget v2, v1, v5

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    goto :goto_0
.end method
