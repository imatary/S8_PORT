.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFilter"
.end annotation


# static fields
.field private static final ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;


# instance fields
.field public final currency:Ljava/lang/String;

.field public final from:J

.field public final region:Ljava/lang/String;

.field public final tenderOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final to:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x0

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    const-wide/high16 v4, -0x8000000000000000L

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    sput-object v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iput-boolean p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    return-void
.end method

.method public static all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-object v0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v4, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-wide v4, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    iget-boolean v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v4, 0x20

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-wide v4, p1

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    if-nez p1, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    :goto_0
    if-nez p2, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    :goto_1
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_1
.end method

.method public withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method

.method public withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v1
.end method
