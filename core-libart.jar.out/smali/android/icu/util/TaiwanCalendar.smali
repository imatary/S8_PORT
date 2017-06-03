.class public Landroid/icu/util/TaiwanCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "TaiwanCalendar.java"


# static fields
.field public static final BEFORE_MINGUO:I = 0x0

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field public static final MINGUO:I = 0x1

.field private static final Taiwan_ERA_START:I = 0x777

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

    invoke-direct {p0}, Landroid/icu/util/TaiwanCalendar;-><init>()V

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

    const-string/jumbo v0, "roc"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    add-int/lit16 v0, v1, -0x777

    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v3, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    rsub-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x13

    const/4 v3, 0x1

    const/16 v1, 0x7b2

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    const/16 v2, 0x7b2

    invoke-virtual {p0, v4, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    add-int/lit16 v1, v2, 0x777

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    add-int/lit16 v1, v2, 0x777

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method
