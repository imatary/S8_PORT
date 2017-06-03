.class public Landroid/icu/util/BuddhistCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# static fields
.field public static final BE:I = 0x0

.field private static final BUDDHIST_ERA_START:I = -0x21f

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/BuddhistCalendar;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "buddhist"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x21f

    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x13

    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x7b2

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x9d1

    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    add-int/lit16 v0, v1, -0x21f

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method
