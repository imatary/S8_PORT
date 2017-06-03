.class public final Landroid/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field public static final DAY:Landroid/icu/impl/duration/TimeUnit;

.field public static final HOUR:Landroid/icu/impl/duration/TimeUnit;

.field public static final MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final MINUTE:Landroid/icu/impl/duration/TimeUnit;

.field public static final MONTH:Landroid/icu/impl/duration/TimeUnit;

.field public static final SECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final WEEK:Landroid/icu/impl/duration/TimeUnit;

.field public static final YEAR:Landroid/icu/impl/duration/TimeUnit;

.field static final approxDurations:[J

.field static final units:[Landroid/icu/impl/duration/TimeUnit;


# instance fields
.field final name:Ljava/lang/String;

.field final ordinal:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "year"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "month"

    invoke-direct {v0, v1, v4}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "week"

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "day"

    invoke-direct {v0, v1, v6}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "hour"

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "minute"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "second"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string/jumbo v1, "millisecond"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/icu/impl/duration/TimeUnit;

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x758fac300L
        0x9cd00b00L
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    int-to-byte v0, p2

    iput-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    return-void
.end method


# virtual methods
.method public larger()Landroid/icu/impl/duration/TimeUnit;
    .locals 2

    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public ordinal()I
    .locals 1

    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    return v0
.end method

.method public smaller()Landroid/icu/impl/duration/TimeUnit;
    .locals 2

    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    return-object v0
.end method
