.class public Landroid/icu/util/IslamicCalendar;
.super Landroid/icu/util/Calendar;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/IslamicCalendar$CalculationType;
    }
.end annotation


# static fields
.field private static final ASTRONOMICAL_EPOC:J = 0x1dbb17L

.field private static final CIVIL_EPOC:J = 0x1dbb18L

.field public static final DHU_AL_HIJJAH:I = 0xb

.field public static final DHU_AL_QIDAH:I = 0xa

.field private static final HIJRA_MILLIS:J = -0x26ac5419b000L

.field public static final JUMADA_1:I = 0x4

.field public static final JUMADA_2:I = 0x5

.field private static final LIMITS:[[I

.field public static final MUHARRAM:I = 0x0

.field public static final RABI_1:I = 0x2

.field public static final RABI_2:I = 0x3

.field public static final RAJAB:I = 0x6

.field public static final RAMADAN:I = 0x8

.field public static final SAFAR:I = 0x1

.field public static final SHABAN:I = 0x7

.field public static final SHAWWAL:I = 0x9

.field private static final UMALQURA_MONTHLENGTH:[I

.field private static final UMALQURA_YEAR_END:I = 0x640

.field private static final UMALQURA_YEAR_START:I = 0x514

.field private static final UMALQURA_YEAR_START_ESTIMATE_FIX:[B

.field private static astro:Landroid/icu/impl/CalendarAstronomer; = null

.field private static cache:Landroid/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x56c86ac454dd7c0dL


# instance fields
.field private cType:Landroid/icu/util/IslamicCalendar$CalculationType;

.field private civil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x5

    const v5, 0x4c4b40

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[I

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v4, v4, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v3, v3, v7, v7}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x32

    const/16 v2, 0x33

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1d

    const/16 v2, 0x1e

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x162

    const/16 v2, 0x163

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    filled-new-array {v1, v2, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [I

    aput-object v1, v0, v7

    new-array v1, v3, [I

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x10

    aput-object v1, v0, v2

    filled-new-array {v4, v4, v5, v5}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    filled-new-array {v4, v4, v5, v5}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    const/16 v0, 0x12d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    return-void

    :array_0
    .array-data 4
        0xaaa
        0xd54
        0xec9
        0x6d4
        0x6ea
        0x36c
        0xaad
        0x555
        0x6a9
        0x792
        0xba9
        0x5d4
        0xada
        0x55c
        0xd2d
        0x695
        0x74a
        0xb54
        0xb6a
        0x5ad
        0x4ae
        0xa4f
        0x517
        0x68b
        0x6a5
        0xad5
        0x2d6
        0x95b
        0x49d
        0xa4d
        0xd26
        0xd95
        0x5ac
        0x9b6
        0x2ba
        0xa5b
        0x52b
        0xa95
        0x6ca
        0xae9
        0x2f4
        0x976
        0x2b6
        0x956
        0xaca
        0xba4
        0xbd2
        0x5d9
        0x2dc
        0x96d
        0x54d
        0xaa5
        0xb52
        0xba5
        0x5b4
        0x9b6
        0x557
        0x297
        0x54b
        0x6a3
        0x752
        0xb65
        0x56a
        0xaab
        0x52b
        0xc95
        0xd4a
        0xda5
        0x5ca
        0xad6
        0x957
        0x4ab
        0x94b
        0xaa5
        0xb52
        0xb6a
        0x575
        0x276
        0x8b7
        0x45b
        0x555
        0x5a9
        0x5b4
        0x9da
        0x4dd
        0x26e
        0x936
        0xaaa
        0xd54
        0xdb2
        0x5d5
        0x2da
        0x95b
        0x4ab
        0xa55
        0xb49
        0xb64
        0xb71
        0x5b4
        0xab5
        0xa55
        0xd25
        0xe92
        0xec9
        0x6d4
        0xae9
        0x96b
        0x4ab
        0xa93
        0xd49
        0xda4
        0xdb2
        0xab9
        0x4ba
        0xa5b
        0x52b
        0xa95
        0xb2a
        0xb55
        0x55c
        0x4bd
        0x23d
        0x91d
        0xa95
        0xb4a
        0xb5a
        0x56d
        0x2b6
        0x93b
        0x49b
        0x655
        0x6a9
        0x754
        0xb6a
        0x56c
        0xaad
        0x555
        0xb29
        0xb92
        0xba9
        0x5d4
        0xada
        0x55a
        0xaab
        0x595
        0x749
        0x764
        0xbaa
        0x5b5
        0x2b6
        0xa56
        0xe4d
        0xb25
        0xb52
        0xb6a
        0x5ad
        0x2ae
        0x92f
        0x497
        0x64b
        0x6a5
        0x6ac
        0xad6
        0x55d
        0x49d
        0xa4d
        0xd16
        0xd95
        0x5aa
        0x5b5
        0x2da
        0x95b
        0x4ad
        0x595
        0x6ca
        0x6e4
        0xaea
        0x4f5
        0x2b6
        0x956
        0xaaa
        0xb54
        0xbd2
        0x5d9
        0x2ea
        0x96d
        0x4ad
        0xa95
        0xb4a
        0xba5
        0x5b2
        0x9b5
        0x4d6
        0xa97
        0x547
        0x693
        0x749
        0xb55
        0x56a
        0xa6b
        0x52b
        0xa8b
        0xd46
        0xda3
        0x5ca
        0xad6
        0x4db
        0x26b
        0x94b
        0xaa5
        0xb52
        0xb69
        0x575
        0x176
        0x8b7
        0x25b
        0x52b
        0x565
        0x5b4
        0x9da
        0x4ed
        0x16d
        0x8b6
        0xaa6
        0xd52
        0xda9
        0x5d4
        0xada
        0x95b
        0x4ab
        0x653
        0x729
        0x762
        0xba9
        0x5b2
        0xab5
        0x555
        0xb25
        0xd92
        0xec9
        0x6d2
        0xae9
        0x56b
        0x4ab
        0xa55
        0xd29
        0xd54
        0xdaa
        0x9b5
        0x4ba
        0xa3b
        0x49b
        0xa4d
        0xaaa
        0xad5
        0x2da
        0x95d
        0x45e
        0xa2e
        0xc9a
        0xd55
        0x6b2
        0x6b9
        0x4ba
        0xa5d
        0x52d
        0xa95
        0xb52
        0xba8
        0xbb4
        0x5b9
        0x2da
        0x95a
        0xb4a
        0xda4
        0xed1
        0x6e8
        0xb6a
        0x56d
        0x535
        0x695
        0xd4a
        0xda8
        0xdd4
        0x6da
        0x55b
        0x29d
        0x62b
        0xb15
        0xb4a
        0xb95
        0x5aa
        0xaae
        0x92e
        0xc8f
        0x527
        0x695
        0x6aa
        0xad6
        0x55d
        0x29d
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    iput-boolean v2, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    iput-boolean v2, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-direct {p0, p2}, Landroid/icu/util/IslamicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static final civilLeapYear(I)Z
    .locals 2

    const/16 v1, 0xb

    mul-int/lit8 v0, p0, 0xb

    add-int/lit8 v0, v0, 0xe

    rem-int/lit8 v0, v0, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private monthStart(II)J
    .locals 12

    div-int/lit8 v5, p2, 0xc

    add-int v4, p1, v5

    rem-int/lit8 v1, p2, 0xc

    const-wide/16 v2, 0x0

    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_2

    :cond_0
    int-to-double v6, v1

    const-wide v8, 0x403d800000000000L    # 29.5

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    add-int/lit8 v5, v4, -0x1

    mul-int/lit16 v5, v5, 0x162

    int-to-long v8, v5

    add-long/2addr v6, v8

    mul-int/lit8 v5, v4, 0xb

    add-int/lit8 v5, v5, 0x3

    int-to-double v8, v5

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    add-long v2, v6, v8

    :cond_1
    :goto_0
    return-wide v2

    :cond_2
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_3

    const/16 v5, 0x514

    if-lt p1, v5, :cond_0

    :cond_3
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v1

    int-to-long v6, v5

    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_1

    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static final moonAge(J)D
    .locals 8

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide/16 v0, 0x0

    sget-object v3, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v2, p0, p1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    sget-object v2, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v2}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit v3

    mul-double v2, v0, v6

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double v0, v2, v4

    cmpl-double v2, v0, v6

    if-lez v2, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, v2

    :cond_0
    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    :cond_1
    return-void
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "islamic-civil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "islamic-umalqura"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "islamic-tbla"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "islamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0
.end method

.method private static final trueMonthStart(J)J
    .locals 10

    sget-object v6, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v6, p0, p1}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v4

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    long-to-double v6, p0

    const-wide v8, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    const-wide v8, -0x26ac5419b000L

    add-long v2, v8, v6

    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v0

    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    :cond_0
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-gez v6, :cond_0

    :cond_1
    const-wide v6, -0x26ac5419b000L

    sub-long v6, v2, v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    sget-object v6, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v6, p0, p1, v4, v5}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_2
    return-wide v4

    :cond_3
    :goto_0
    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_1

    goto :goto_0
.end method

.method private yearStart(I)J
    .locals 10

    const-wide/16 v2, 0x0

    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v4, :cond_2

    :cond_0
    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x162

    int-to-long v4, v1

    mul-int/lit8 v1, p1, 0xb

    add-int/lit8 v1, v1, 0x3

    int-to-double v6, v1

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    add-long v2, v4, v6

    :cond_1
    :goto_0
    return-wide v2

    :cond_2
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v4, :cond_3

    const/16 v1, 0x514

    if-lt p1, v1, :cond_0

    const/16 v1, 0x640

    if-gt p1, v1, :cond_0

    :cond_3
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v4, :cond_4

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v4, :cond_1

    add-int/lit16 p1, p1, -0x514

    int-to-double v4, p1

    const-wide v6, 0x407625e00d1b7176L    # 354.3672

    mul-double/2addr v4, v6

    const-wide v6, 0x411c188833333333L    # 460322.05

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    sget-object v1, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    aget-byte v1, v1, p1

    add-int/2addr v1, v0

    int-to-long v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getCalculationType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-nez v0, :cond_0

    const-string/jumbo v0, "islamic"

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {v0}, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 24

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x1dbb18

    sub-long v8, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v20, v0

    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v20, v0

    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v20, v0

    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x1dbb17

    sub-long v8, v20, v22

    :cond_1
    const-wide/16 v20, 0x1e

    mul-long v20, v20, v8

    const-wide/16 v22, 0x2996

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x40c4c38000000000L    # 10631.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    const-wide/16 v20, 0x1d

    sub-long v20, v8, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x403d800000000000L    # 29.5

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v11, v0

    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v11}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v20

    sub-long v20, v8, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v20

    sub-long v20, v8, v20

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v7, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v20, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v20, v0

    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    long-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide v22, 0x403d87d4abcb41d5L    # 29.530588853

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v13, v0

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide v22, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-long v14, v0

    sub-long v20, v8, v14

    const-wide/16 v22, 0x19

    cmp-long v20, v20, v22

    if-ltz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    add-int/lit8 v13, v13, 0x1

    :cond_4
    :goto_1
    int-to-long v0, v13

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v14

    cmp-long v20, v14, v8

    if-lez v20, :cond_5

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_5
    div-int/lit8 v20, v13, 0xc

    add-int/lit8 v19, v20, 0x1

    rem-int/lit8 v11, v13, 0xc

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v20, v0

    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x514

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v16

    cmp-long v20, v8, v16

    if-gez v20, :cond_7

    const-wide/16 v20, 0x1e

    mul-long v20, v20, v8

    const-wide/16 v22, 0x2996

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x40c4c38000000000L    # 10631.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    const-wide/16 v20, 0x1d

    sub-long v20, v8, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x403d800000000000L    # 29.5

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v11, v0

    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x513

    const/4 v10, 0x0

    const-wide/16 v4, 0x1

    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_9

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v20

    sub-long v20, v8, v20

    const-wide/16 v22, 0x1

    add-long v4, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v4, v20

    if-nez v20, :cond_a

    const/16 v10, 0xb

    :cond_9
    move/from16 v19, v18

    move v11, v10

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v4, v20

    if-gez v20, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v12

    const/4 v10, 0x0

    :goto_2
    int-to-long v0, v12

    move-wide/from16 v20, v0

    cmp-long v20, v4, v20

    if-lez v20, :cond_9

    int-to-long v0, v12

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v12

    goto :goto_2
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v2

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const-wide/32 v0, 0x1dbb17

    :goto_0
    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const-wide/32 v0, 0x1dbb18

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    sget-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 8

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_2

    :cond_0
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x1d

    const/16 v3, 0xb

    if-ne p2, v3, :cond_1

    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_3

    const/16 v3, 0x514

    if-lt p1, v3, :cond_0

    const/16 v3, 0x640

    if-gt p1, v3, :cond_0

    :cond_3
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0xc

    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v4

    int-to-long v6, p2

    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_1

    add-int/lit16 v0, p1, -0x514

    rsub-int/lit8 v3, p2, 0xb

    const/4 v4, 0x1

    shl-int v2, v4, v3

    sget-object v3, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    aget v3, v3, v0

    and-int/2addr v3, v2

    if-nez v3, :cond_5

    const/16 v1, 0x1d

    goto :goto_0

    :cond_5
    const/16 v1, 0x1e

    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 8

    const/16 v5, 0xc

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    add-int/lit16 v1, v3, 0x162

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_3

    const/16 v3, 0x514

    if-lt p1, v3, :cond_0

    const/16 v3, 0x640

    if-gt p1, v3, :cond_0

    :cond_3
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v2, v3, 0xc

    add-int/lit8 v3, v2, 0xc

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v4

    int-to-long v6, v2

    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isCivil()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V
    .locals 2

    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    goto :goto_0
.end method

.method public setCivil(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clear()V

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clear()V

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method
