.class public Landroid/icu/impl/duration/BasicDurationFormat;
.super Landroid/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient formatter:Landroid/icu/impl/duration/DurationFormatter;

.field transient pformatter:Landroid/icu/impl/duration/PeriodFormatter;

.field transient pfs:Landroid/icu/impl/duration/PeriodFormatterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/DurationFormat;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/icu/text/DurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;
    .locals 1

    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormat;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_1
    instance-of v1, p1, Ljavax/xml/datatype/Duration;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDuration(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot format given Object as a Duration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public formatDuration(Ljava/lang/Object;)Ljava/lang/String;
    .locals 26

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v12, v0, [Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x0

    aput-object v22, v12, v23

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x1

    aput-object v22, v12, v23

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x2

    aput-object v22, v12, v23

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x3

    aput-object v22, v12, v23

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x4

    aput-object v22, v12, v23

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/16 v23, 0x5

    aput-object v22, v12, v23

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Landroid/icu/impl/duration/TimeUnit;

    move-object/from16 v19, v0

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x0

    aput-object v22, v19, v23

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x1

    aput-object v22, v19, v23

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x2

    aput-object v22, v19, v23

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x3

    aput-object v22, v19, v23

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x4

    aput-object v22, v19, v23

    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    const/16 v23, 0x5

    aput-object v22, v19, v23

    move-object/from16 v11, p1

    check-cast v11, Ljavax/xml/datatype/Duration;

    const/16 v20, 0x0

    move-object v6, v11

    const/4 v13, 0x0

    invoke-virtual {v11}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v22

    if-gez v22, :cond_0

    invoke-virtual {v11}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v6

    const/4 v13, 0x1

    :cond_0
    const/16 v21, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    aget-object v22, v12, v10

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v22

    if-eqz v22, :cond_3

    aget-object v22, v12, v10

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v22

    if-nez v22, :cond_1

    if-eqz v21, :cond_3

    :cond_1
    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v22, v19, v10

    sget-object v23, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    float-to-double v8, v7

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    sub-double v22, v8, v14

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v16, v22, v24

    const-wide/16 v22, 0x0

    cmpl-double v22, v16, v22

    if-lez v22, :cond_2

    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    move-wide/from16 v0, v16

    double-to-float v5, v0

    double-to-float v7, v14

    :cond_2
    if-nez v20, :cond_4

    aget-object v22, v19, v10

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v20

    :goto_1
    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v4}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v20

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    aget-object v22, v19, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v20

    goto :goto_1

    :cond_5
    if-nez v20, :cond_6

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v22

    return-object v22

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/duration/Period;->inPast()Landroid/icu/impl/duration/Period;

    move-result-object v20

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v22

    return-object v22

    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/duration/Period;->inFuture()Landroid/icu/impl/duration/Period;

    move-result-object v20

    goto :goto_2
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
