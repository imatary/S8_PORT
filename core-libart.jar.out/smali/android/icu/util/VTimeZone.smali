.class public Landroid/icu/util/VTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DEF_DSTSAVINGS:I = 0x36ee80

.field private static final DEF_TZSTARTTIME:J = 0x0L

.field private static final EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final ERR:I = 0x3

.field private static final ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final ICAL_DOW_NAMES:[Ljava/lang/String;

.field private static final ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final ICAL_END:Ljava/lang/String; = "END"

.field private static final ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static ICU_TZVERSION:Ljava/lang/String; = null

.field private static final INI:I = 0x0

.field private static final MAX_TIME:J = 0x7fffffffffffffffL

.field private static final MIN_TIME:J = -0x8000000000000000L

.field private static final MONTHLENGTH:[I

.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TZI:I = 0x2

.field private static final VTZ:I = 0x1

.field private static final serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private volatile transient isFrozen:Z

.field private lastmod:Ljava/util/Date;

.field private olsonzid:Ljava/lang/String;

.field private tz:Landroid/icu/util/BasicTimeZone;

.field private tzurl:Ljava/lang/String;

.field private vtzlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v1, Landroid/icu/util/VTimeZone;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "SU"

    aput-object v4, v1, v2

    const-string/jumbo v2, "MO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "TU"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "WE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "TH"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "FR"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "SA"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sput-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/util/BasicTimeZone;-><init>()V

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private static appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "UNTIL"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static beginRRULE(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "RRULE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "FREQ"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "YEARLY"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "BYMONTH"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "BEGIN"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "TZOFFSETTO"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "TZNAME"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "DTSTART"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long v0, p3

    add-long/2addr v0, p5

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "STANDARD"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Ljava/io/Reader;)Landroid/icu/util/VTimeZone;
    .locals 2

    new-instance v0, Landroid/icu/util/VTimeZone;

    invoke-direct {v0}, Landroid/icu/util/VTimeZone;-><init>()V

    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static create(Ljava/lang/String;)Landroid/icu/util/VTimeZone;
    .locals 2

    new-instance v0, Landroid/icu/util/VTimeZone;

    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;

    move-result-object v1

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    iput-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    iget-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    return-object v0
.end method

.method private static createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    new-array v6, v2, [J

    const/4 v2, 0x0

    aput-wide p3, v6, v2

    :cond_1
    new-instance v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v7, 0x2

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    return-object v2

    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [J

    const/4 v11, 0x0

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move v12, v11

    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v11, v12, 0x1

    :try_start_2
    move/from16 v0, p6

    invoke-static {v8, v0}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, v6, v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move v12, v11

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_1
    const/4 v2, 0x0

    return-object v2

    :catch_1
    move-exception v10

    move v11, v12

    goto :goto_1
.end method

.method private static createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    return-object v7

    :cond_1
    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v0, v7, [J

    move-object/from16 v34, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v32

    if-nez v32, :cond_2

    const/4 v7, 0x0

    return-object v7

    :cond_2
    const/4 v7, 0x0

    aget v3, v32, v7

    const/4 v7, 0x1

    aget v5, v32, v7

    const/4 v7, 0x2

    aget v4, v32, v7

    const/4 v7, 0x3

    aget v9, v32, v7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    move-object/from16 v0, v32

    array-length v7, v0

    const/4 v8, 0x4

    if-le v7, v8, :cond_c

    move-object/from16 v0, v32

    array-length v7, v0

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    return-object v7

    :cond_4
    if-eqz v5, :cond_3

    const/16 v27, 0x1f

    const/4 v7, 0x7

    new-array v0, v7, [I

    move-object/from16 v19, v0

    const/16 v29, 0x0

    :goto_0
    const/4 v7, 0x7

    move/from16 v0, v29

    if-ge v0, v7, :cond_7

    add-int/lit8 v7, v29, 0x3

    aget v7, v32, v7

    aput v7, v19, v29

    aget v7, v19, v29

    if-lez v7, :cond_6

    aget v7, v19, v29

    :goto_1
    aput v7, v19, v29

    aget v7, v19, v29

    move/from16 v0, v27

    if-ge v7, v0, :cond_5

    aget v27, v19, v29

    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    :cond_6
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v7, v7, v3

    aget v8, v19, v29

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    const/16 v29, 0x1

    :goto_2
    const/4 v7, 0x7

    move/from16 v0, v29

    if-ge v0, v7, :cond_b

    const/16 v28, 0x0

    const/16 v30, 0x0

    :goto_3
    const/4 v7, 0x7

    move/from16 v0, v30

    if-ge v0, v7, :cond_8

    aget v7, v19, v30

    add-int v8, v27, v29

    if-ne v7, v8, :cond_9

    const/16 v28, 0x1

    :cond_8
    if-nez v28, :cond_a

    const/4 v7, 0x0

    return-object v7

    :cond_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    :cond_b
    move/from16 v9, v27

    :cond_c
    :goto_4
    move/from16 v0, p6

    int-to-long v10, v0

    add-long v10, v10, p3

    const/4 v7, 0x0

    invoke-static {v10, v11, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v21

    const/4 v7, 0x0

    aget v15, v21, v7

    const/4 v7, -0x1

    if-ne v3, v7, :cond_d

    const/4 v7, 0x1

    aget v3, v21, v7

    :cond_d
    if-nez v5, :cond_e

    if-nez v4, :cond_e

    if-nez v9, :cond_e

    const/4 v7, 0x2

    aget v9, v21, v7

    :cond_e
    const/4 v7, 0x5

    aget v6, v21, v7

    const v16, 0x7fffffff

    const/4 v7, 0x0

    aget-wide v10, v34, v7

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v7, v10, v12

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    aget-wide v10, v34, v7

    move-object/from16 v0, v21

    invoke-static {v10, v11, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v7, 0x0

    aget v16, v21, v7

    :cond_f
    const/4 v2, 0x0

    if-nez v5, :cond_27

    if-nez v4, :cond_27

    if-eqz v9, :cond_27

    new-instance v2, Landroid/icu/util/DateTimeRule;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v9, v6, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_5
    new-instance v10, Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object v14, v2

    invoke-direct/range {v10 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    return-object v10

    :cond_10
    const/4 v7, -0x1

    if-eq v3, v7, :cond_11

    if-nez v5, :cond_12

    :cond_11
    const/4 v7, 0x0

    return-object v7

    :cond_12
    if-eqz v9, :cond_11

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_13

    const/4 v7, 0x0

    return-object v7

    :cond_13
    move/from16 v25, v3

    move-object/from16 v0, v32

    array-length v7, v0

    add-int/lit8 v20, v7, -0x3

    const/16 v24, 0x1f

    const/16 v29, 0x0

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    add-int/lit8 v7, v29, 0x3

    aget v23, v32, v7

    if-lez v23, :cond_15

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    move/from16 v24, v23

    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    :cond_15
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v7, v7, v3

    add-int v7, v7, v23

    add-int/lit8 v23, v7, 0x1

    goto :goto_7

    :cond_16
    const/16 v17, -0x1

    const/16 v29, 0x1

    :goto_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v29

    if-ge v0, v7, :cond_25

    move-object/from16 v0, p5

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v0, v7, [J

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v26

    const/4 v7, 0x0

    aget-wide v10, v33, v7

    const/4 v7, 0x0

    aget-wide v12, v34, v7

    cmp-long v7, v10, v12

    if-lez v7, :cond_17

    move-object/from16 v34, v33

    :cond_17
    const/4 v7, 0x0

    aget v7, v26, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_18

    const/4 v7, 0x1

    aget v7, v26, v7

    if-nez v7, :cond_19

    :cond_18
    const/4 v7, 0x0

    return-object v7

    :cond_19
    const/4 v7, 0x3

    aget v7, v26, v7

    if-eqz v7, :cond_18

    move-object/from16 v0, v26

    array-length v7, v0

    add-int/lit8 v18, v7, -0x3

    add-int v7, v20, v18

    const/4 v8, 0x7

    if-le v7, v8, :cond_1a

    const/4 v7, 0x0

    return-object v7

    :cond_1a
    const/4 v7, 0x1

    aget v7, v26, v7

    if-eq v7, v5, :cond_1b

    const/4 v7, 0x0

    return-object v7

    :cond_1b
    const/4 v7, 0x0

    aget v7, v26, v7

    if-eq v7, v3, :cond_1d

    const/4 v7, -0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_22

    const/4 v7, 0x0

    aget v7, v26, v7

    sub-int v22, v7, v3

    const/16 v7, -0xb

    move/from16 v0, v22

    if-eq v0, v7, :cond_1c

    const/4 v7, -0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_1f

    :cond_1c
    const/4 v7, 0x0

    aget v17, v26, v7

    move/from16 v25, v17

    const/16 v24, 0x1f

    :cond_1d
    :goto_9
    const/4 v7, 0x0

    aget v7, v26, v7

    move/from16 v0, v25

    if-ne v7, v0, :cond_24

    const/16 v30, 0x0

    :goto_a
    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    add-int/lit8 v7, v30, 0x3

    aget v23, v26, v7

    if-lez v23, :cond_23

    :goto_b
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    move/from16 v24, v23

    :cond_1e
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    :cond_1f
    const/16 v7, 0xb

    move/from16 v0, v22

    if-eq v0, v7, :cond_20

    const/4 v7, 0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_21

    :cond_20
    const/4 v7, 0x0

    aget v17, v26, v7

    goto :goto_9

    :cond_21
    const/4 v7, 0x0

    return-object v7

    :cond_22
    const/4 v7, 0x0

    aget v7, v26, v7

    if-eq v7, v3, :cond_1d

    const/4 v7, 0x0

    aget v7, v26, v7

    move/from16 v0, v17

    if-eq v7, v0, :cond_1d

    const/4 v7, 0x0

    return-object v7

    :cond_23
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    const/4 v8, 0x0

    aget v8, v26, v8

    aget v7, v7, v8

    add-int v7, v7, v23

    add-int/lit8 v23, v7, 0x1

    goto :goto_b

    :cond_24
    add-int v20, v20, v18

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_8

    :cond_25
    const/4 v7, 0x7

    move/from16 v0, v20

    if-eq v0, v7, :cond_26

    const/4 v7, 0x0

    return-object v7

    :cond_26
    move/from16 v3, v25

    move/from16 v9, v24

    goto/16 :goto_4

    :cond_27
    if-eqz v5, :cond_28

    if-eqz v4, :cond_28

    if-nez v9, :cond_28

    new-instance v2, Landroid/icu/util/DateTimeRule;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_5

    :cond_28
    if-eqz v5, :cond_29

    if-nez v4, :cond_29

    if-eqz v9, :cond_29

    new-instance v2, Landroid/icu/util/DateTimeRule;

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v7, v2

    move v8, v3

    move v10, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_5

    :cond_29
    const/4 v7, 0x0

    return-object v7
.end method

.method private static endZoneProps(Ljava/io/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "STANDARD"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDateTimeString(J)Ljava/lang/String;
    .locals 12

    const v10, 0x36ee80

    const v9, 0xea60

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-static {p0, p1, v6}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v6, v0, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v8

    invoke-static {v6, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x54

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget v5, v0, v6

    div-int v1, v5, v10

    rem-int/2addr v5, v10

    div-int v2, v5, v9

    rem-int/2addr v5, v9

    div-int/lit16 v4, v5, 0x3e8

    invoke-static {v1, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(DST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(STD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUTCDateTimeString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    if-ne p0, v1, :cond_0

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v1

    if-eq p2, v1, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v1

    if-ne v1, p1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v0

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    rem-int/lit8 v1, v0, 0x7

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    if-ne v1, p1, :cond_4

    return v3

    :cond_4
    if-eq p0, v3, :cond_5

    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x7

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    rem-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_6

    div-int/lit8 v1, v0, 0x7

    if-ne v1, p1, :cond_6

    return v3

    :cond_6
    if-eq p0, v3, :cond_7

    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_7

    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_7

    return v3

    :cond_7
    return v4
.end method

.method private load(Ljava/io/Reader;)Z
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x0

    :try_start_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "END:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_1
    :goto_1
    if-nez v5, :cond_8

    return v8

    :cond_2
    const/16 v6, 0xd

    if-eq v0, v6, :cond_0

    if-eqz v1, :cond_5

    const/16 v6, 0x9

    if-eq v0, v6, :cond_4

    const/16 v6, 0x20

    if-eq v0, v6, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eq v0, v9, :cond_4

    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    if-ne v0, v9, :cond_7

    const/4 v1, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "END:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "BEGIN:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return v8

    :cond_8
    invoke-direct {p0}, Landroid/icu/util/VTimeZone;->parse()Z

    move-result v6

    return v6
.end method

.method private static millisToOffset(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz p0, :cond_0

    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    div-int/lit16 v4, p0, 0x3e8

    rem-int/lit8 v3, v4, 0x3c

    sub-int v5, v4, v3

    div-int/lit8 v4, v5, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    div-int/lit8 v0, v4, 0x3c

    invoke-static {v0, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p0, p0

    goto :goto_0
.end method

.method private static numToString(II)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_0

    sub-int v4, v1, p1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static offsetStrToMillis(Ljava/lang/String;)I
    .locals 12

    const/4 v11, 0x7

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Bad offset string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v9, :cond_2

    if-ne v2, v11, :cond_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_4

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v11, :cond_3

    const/4 v9, 0x5

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v9, 0x2d

    if-ne v6, v9, :cond_0

    const/4 v8, -0x1

    goto :goto_1

    :cond_5
    mul-int/lit8 v9, v0, 0x3c

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    mul-int/lit16 v3, v9, 0x3e8

    return v3

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private parse()Z
    .locals 58

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    return v15

    :cond_1
    const/16 v53, 0x0

    const/16 v48, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v51, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v36, 0x0

    const/4 v10, 0x0

    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    const/16 v33, 0x0

    const/16 v32, 0x0

    const-wide v28, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    const-string/jumbo v15, ":"

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v55

    if-ltz v55, :cond_2

    const/4 v15, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v55

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    add-int/lit8 v15, v55, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    packed-switch v48, :pswitch_data_0

    :cond_3
    :goto_0
    const/4 v15, 0x3

    move/from16 v0, v48

    if-ne v0, v15, :cond_2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v15, 0x0

    return v15

    :pswitch_0
    const-string/jumbo v15, "BEGIN"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v15, "VTIMEZONE"

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v48, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v15, "TZID"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v53, v54

    goto :goto_0

    :cond_4
    const-string/jumbo v15, "TZURL"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v15, "LAST-MODIFIED"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/util/Date;

    const/16 v16, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    goto :goto_0

    :cond_6
    const-string/jumbo v15, "BEGIN"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string/jumbo v15, "DAYLIGHT"

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    const-string/jumbo v15, "STANDARD"

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    if-eqz v35, :cond_9

    :cond_7
    if-nez v53, :cond_8

    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    const/16 v36, 0x0

    const/16 v27, 0x0

    const/16 v51, 0x0

    const/4 v5, 0x0

    move/from16 v21, v35

    const/16 v48, 0x2

    goto/16 :goto_0

    :cond_9
    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v15, "END"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v15, "DTSTART"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v22, v54

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v15, "TZNAME"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v5, v54

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v15, "TZOFFSETFROM"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v27, v54

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v15, "TZOFFSETTO"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v51, v54

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v15, "RDATE"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    if-eqz v36, :cond_f

    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_f
    if-nez v10, :cond_10

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    :cond_10
    new-instance v46, Ljava/util/StringTokenizer;

    const-string/jumbo v15, ","

    move-object/from16 v0, v46

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v46 .. v46}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {v46 .. v46}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_11
    const-string/jumbo v15, "RRULE"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    if-nez v36, :cond_12

    if-eqz v10, :cond_12

    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_12
    if-nez v10, :cond_13

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    :cond_13
    const/16 v36, 0x1

    move-object/from16 v0, v54

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v15, "END"

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v22, :cond_15

    if-nez v27, :cond_16

    :cond_15
    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_16
    if-eqz v51, :cond_15

    if-nez v5, :cond_17

    move-object/from16 v0, v53

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :cond_17
    const/16 v44, 0x0

    const/4 v11, 0x0

    const/16 v52, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static/range {v27 .. v27}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v51 .. v51}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v52

    if-eqz v21, :cond_1a

    sub-int v15, v52, v11

    if-lez v15, :cond_19

    move v6, v11

    sub-int v7, v52, v11

    :goto_2
    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v8

    const/4 v4, 0x0

    if-eqz v36, :cond_1b

    invoke-static/range {v5 .. v11}, Landroid/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    move-result-object v44

    :goto_3
    if-eqz v44, :cond_18

    const/4 v15, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v15}, Landroid/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v15, v16, v28

    if-gez v15, :cond_18

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    if-lez v7, :cond_1c

    move/from16 v33, v11

    const/16 v32, 0x0

    :cond_18
    :goto_4
    if-nez v44, :cond_1e

    const/16 v48, 0x3

    goto/16 :goto_0

    :cond_19
    const v15, 0x36ee80

    sub-int v6, v52, v15

    const v7, 0x36ee80

    goto :goto_2

    :cond_1a
    move/from16 v6, v52

    const/4 v7, 0x0

    goto :goto_2

    :cond_1b
    invoke-static/range {v5 .. v11}, Landroid/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v44

    goto :goto_3

    :cond_1c
    sub-int v15, v11, v52

    const v16, 0x36ee80

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    const v15, 0x36ee80

    sub-int v33, v11, v15

    const v32, 0x36ee80

    goto :goto_4

    :cond_1d
    move/from16 v33, v11

    const/16 v32, 0x0

    goto :goto_4

    :cond_1e
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v48, 0x1

    goto/16 :goto_0

    :cond_1f
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_20

    const/4 v15, 0x0

    return v15

    :cond_20
    new-instance v34, Landroid/icu/util/InitialTimeZoneRule;

    const/4 v15, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v15}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v34

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-direct {v0, v15, v1, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    new-instance v43, Landroid/icu/util/RuleBasedTimeZone;

    move-object/from16 v0, v43

    move-object/from16 v1, v53

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/16 v25, -0x1

    const/16 v24, 0x0

    const/16 v30, 0x0

    :goto_5
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v0, v30

    if-ge v0, v15, :cond_22

    move-object/from16 v0, v45

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/icu/util/TimeZoneRule;

    move-object/from16 v0, v41

    instance-of v15, v0, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v15, :cond_21

    nop

    nop

    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v15

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v30

    :cond_21
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    :cond_22
    const/4 v15, 0x2

    move/from16 v0, v24

    if-le v0, v15, :cond_23

    const/4 v15, 0x0

    return v15

    :cond_23
    const/4 v15, 0x1

    move/from16 v0, v24

    if-ne v0, v15, :cond_24

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_25

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->clear()V

    :cond_24
    :goto_6
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_7
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/icu/util/TimeZoneRule;

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    goto :goto_7

    :cond_25
    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v50

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v49

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v47, v26

    const/16 v30, 0x0

    :goto_8
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v0, v30

    if-ge v0, v15, :cond_28

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    :cond_26
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    :cond_27
    move-object/from16 v0, v45

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/icu/util/TimeZoneRule;

    move-object/from16 v0, v41

    move/from16 v1, v50

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v16

    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v47

    goto :goto_9

    :cond_28
    move-object/from16 v0, v47

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_29

    new-instance v14, Landroid/icu/util/TimeArrayTimeZoneRule;

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v16

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v56

    const/16 v19, 0x0

    aput-wide v56, v18, v19

    const/16 v19, 0x2

    invoke-direct/range {v14 .. v19}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    :goto_a
    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-interface {v0, v1, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_29
    invoke-virtual/range {v47 .. v47}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v23

    new-instance v14, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v16

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v18

    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v19

    const/16 v20, 0x0

    aget v20, v23, v20

    invoke-direct/range {v14 .. v20}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    goto :goto_a

    :cond_2a
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :catch_0
    move-exception v31

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseDateTimeString(Ljava/lang/String;I)J
    .locals 20

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    if-nez v5, :cond_4

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Invalid date time string format"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v15, 0xf

    if-eq v6, v15, :cond_2

    const/16 v15, 0x10

    if-ne v6, v15, :cond_0

    :cond_2
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x54

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/16 v15, 0x10

    if-ne v6, v15, :cond_3

    const/16 v15, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5a

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v4, 0x1

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x4

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    const/4 v15, 0x6

    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v15, 0x9

    const/16 v16, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v15, 0xb

    const/16 v16, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v15, 0xd

    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    invoke-static {v14, v9}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    if-ltz v14, :cond_0

    if-ltz v9, :cond_0

    const/16 v15, 0xb

    if-gt v9, v15, :cond_0

    const/4 v15, 0x1

    if-lt v2, v15, :cond_0

    if-gt v2, v7, :cond_0

    if-ltz v3, :cond_0

    const/16 v15, 0x18

    if-ge v3, v15, :cond_0

    if-ltz v8, :cond_0

    const/16 v15, 0x3c

    if-ge v8, v15, :cond_0

    if-ltz v11, :cond_0

    const/16 v15, 0x3c

    if-ge v11, v15, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v14, v9, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    mul-long v12, v16, v18

    const v15, 0x36ee80

    mul-int/2addr v15, v3

    const v16, 0xea60

    mul-int v16, v16, v8

    add-int v15, v15, v16

    mul-int/lit16 v0, v11, 0x3e8

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    if-nez v4, :cond_5

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v12, v12, v16

    :cond_5
    return-wide v12

    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method private static parseRRULE(Ljava/lang/String;[J)[I
    .locals 31

    const/4 v14, -0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const-wide/high16 v24, -0x8000000000000000L

    const/16 v28, 0x0

    const/16 v18, 0x0

    new-instance v23, Ljava/util/StringTokenizer;

    const-string/jumbo v29, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v29, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v29, v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v29, "FREQ"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    const-string/jumbo v29, "YEARLY"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    const/16 v28, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x1

    :cond_2
    :goto_1
    if-eqz v18, :cond_15

    const/16 v29, 0x0

    return-object v29

    :cond_3
    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v29, "UNTIL"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    goto :goto_0

    :catch_0
    move-exception v10

    const/16 v18, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v29, "BYMONTH"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    const/16 v18, 0x1

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    add-int/lit8 v14, v29, -0x1

    if-ltz v14, :cond_7

    const/16 v29, 0xc

    move/from16 v0, v29

    if-lt v14, v0, :cond_0

    :cond_7
    const/16 v18, 0x1

    goto :goto_1

    :catch_1
    move-exception v16

    const/16 v18, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v29, "BYDAY"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v13, v0, :cond_9

    const/16 v29, 0x4

    move/from16 v0, v29

    if-le v13, v0, :cond_a

    :cond_9
    const/16 v18, 0x1

    goto :goto_1

    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v13, v0, :cond_10

    const/16 v22, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x2b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/16 v22, 0x1

    :cond_b
    :goto_2
    add-int/lit8 v29, v13, -0x3

    add-int/lit8 v30, v13, -0x2

    :try_start_2
    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    if-eqz v15, :cond_c

    const/16 v29, 0x4

    move/from16 v0, v29

    if-le v15, v0, :cond_f

    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x2d

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const/16 v22, -0x1

    goto :goto_2

    :cond_e
    const/16 v29, 0x4

    move/from16 v0, v29

    if-ne v13, v0, :cond_b

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_f
    mul-int v17, v15, v22

    add-int/lit8 v29, v13, -0x2

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    :cond_10
    const/16 v27, 0x0

    :goto_3
    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    aget-object v29, v29, v27

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    :cond_11
    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    add-int/lit8 v7, v27, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v16

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    :cond_13
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v29, "BYMONTHDAY"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v29, ","

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v8, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v6, v5, [I

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v29

    if-eqz v29, :cond_0

    add-int/lit8 v12, v11, 0x1

    :try_start_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    aput v29, v6, v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move v11, v12

    goto :goto_4

    :catch_3
    move-exception v16

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_15
    if-nez v28, :cond_16

    const/16 v29, 0x0

    return-object v29

    :cond_16
    const/16 v29, 0x0

    aput-wide v24, p1, v29

    if-nez v6, :cond_18

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v29, 0x0

    const/16 v30, 0x3

    aput v29, v20, v30

    :cond_17
    const/16 v29, 0x0

    aput v14, v20, v29

    const/16 v29, 0x1

    aput v7, v20, v29

    const/16 v29, 0x2

    aput v17, v20, v29

    return-object v20

    :cond_18
    array-length v0, v6

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/4 v9, 0x0

    :goto_5
    array-length v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_17

    add-int/lit8 v29, v9, 0x3

    aget v30, v6, v9

    aput v30, v20, v29

    add-int/lit8 v9, v9, 0x1

    goto :goto_5
.end method

.method private static toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;
    .locals 10

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v4

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v5

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    add-int v4, p1, p2

    add-int/2addr v5, v4

    :cond_1
    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-gez v5, :cond_8

    const/4 v7, -0x1

    const v4, 0x5265c00

    add-int/2addr v5, v4

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v3

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v8

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    if-ne v8, v4, :cond_3

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v9

    if-lez v9, :cond_9

    const/4 v8, 0x2

    add-int/lit8 v4, v9, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v2, v4, 0x1

    :cond_3
    :goto_2
    add-int/2addr v2, v7

    if-nez v2, :cond_a

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    const/16 v1, 0xb

    :cond_4
    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v4, v1

    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    add-int/2addr v3, v7

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    const/4 v3, 0x7

    :cond_6
    :goto_4
    if-nez v8, :cond_d

    new-instance v0, Landroid/icu/util/DateTimeRule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_5
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    add-int/2addr v5, p2

    goto :goto_0

    :cond_8
    const v4, 0x5265c00

    if-lt v5, v4, :cond_2

    const/4 v7, 0x1

    const v4, 0x5265c00

    sub-int/2addr v5, v4

    goto :goto_1

    :cond_9
    const/4 v8, 0x3

    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v4, v1

    add-int/lit8 v6, v9, 0x1

    mul-int/lit8 v6, v6, 0x7

    add-int v2, v4, v6

    goto :goto_2

    :cond_a
    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v4, v1

    if-le v2, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0xb

    if-le v1, v4, :cond_b

    const/4 v1, 0x0

    :cond_b
    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v4, 0x7

    if-le v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    new-instance v0, Landroid/icu/util/DateTimeRule;

    const/4 v4, 0x2

    if-ne v8, v4, :cond_e

    const/4 v4, 0x1

    :goto_6
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private static writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v0, v1}, Landroid/icu/util/VTimeZone;->toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v16

    if-gez v16, :cond_1

    rsub-int/lit8 v4, v16, 0x0

    int-to-long v5, v4

    add-long p5, p5, v5

    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int v8, v4, v5

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    const v4, 0x5265c00

    move/from16 v0, v16

    if-lt v0, v4, :cond_0

    const v4, 0x5265bff

    sub-int v4, v16, v4

    int-to-long v5, v4

    sub-long p5, p5, v5

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    add-int v7, p3, p4

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v9

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v10

    const-wide v13, 0x7fffffffffffffffL

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v11, p5

    invoke-static/range {v4 .. v14}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    add-int v7, p3, p4

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v9

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v10

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v11

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v12, p5

    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    add-int v7, p3, p4

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v9

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v10

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v11

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v12, p5

    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    add-int v7, p3, p4

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v9

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v10

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v11

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v12, p5

    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static writeFooter(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "VTIMEZONE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeHeader(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "BEGIN"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "VTIMEZONE"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "TZID"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TZURL"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LAST-MODIFIED"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .locals 86
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v5, v0

    if-lez v5, :cond_1

    const/16 v72, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, v72

    if-ge v0, v5, :cond_1

    aget-object v5, p3, v72

    if-eqz v5, :cond_0

    aget-object v5, p3, v72

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v5, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v72, v72, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v80, -0x8000000000000000L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v53, 0x0

    const/4 v9, 0x0

    const/16 v66, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v44, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v22, 0x0

    const/4 v4, 0x0

    const/16 v51, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v77, 0x0

    const/16 v29, 0x0

    const/16 v79, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v38, 0x0

    const/16 v78, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v42, 0x0

    const/16 v76, 0x0

    const/16 v68, 0x0

    const/4 v5, 0x6

    new-array v0, v5, [I

    move-object/from16 v67, v0

    const/16 v71, 0x0

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v83

    if-nez v83, :cond_4

    :goto_1
    if-nez v71, :cond_12

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v48

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v5

    move/from16 v0, v48

    if-eq v0, v5, :cond_11

    const/16 v46, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v46

    invoke-static {v5, v0}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v47

    move/from16 v0, v48

    int-to-long v12, v0

    const-wide/16 v14, 0x0

    sub-long v50, v14, v12

    const/16 v52, 0x0

    move-object/from16 v45, p1

    move/from16 v49, v48

    invoke-static/range {v45 .. v52}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_3
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    return-void

    :cond_4
    const/16 v71, 0x1

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v80

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v46, 0x1

    :goto_4
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    add-int v70, v5, v6

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v69

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    add-int v82, v5, v6

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    move/from16 v0, v70

    int-to-long v14, v0

    add-long/2addr v12, v14

    move-object/from16 v0, v67

    invoke-static {v12, v13, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v5, 0x0

    aget v5, v67, v5

    const/4 v6, 0x1

    aget v6, v67, v6

    const/4 v12, 0x2

    aget v12, v67, v12

    invoke-static {v5, v6, v12}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v84

    const/4 v5, 0x0

    aget v85, v67, v5

    const/16 v75, 0x0

    if-eqz v46, :cond_b

    if-nez v51, :cond_5

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    instance-of v5, v5, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_5

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    check-cast v5, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_5

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v51

    check-cast v51, Landroid/icu/util/AnnualTimeZoneRule;

    :cond_5
    if-lez v4, :cond_7

    add-int v5, v66, v4

    move/from16 v0, v85

    if-ne v0, v5, :cond_6

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v0, v70

    if-ne v8, v0, :cond_6

    move/from16 v0, v82

    if-ne v9, v0, :cond_6

    const/4 v5, 0x1

    aget v5, v67, v5

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    const/4 v5, 0x3

    aget v5, v67, v5

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    move/from16 v0, v18

    move/from16 v1, v84

    if-ne v0, v1, :cond_6

    const/4 v5, 0x5

    aget v5, v67, v5

    move/from16 v0, v44

    if-ne v0, v5, :cond_6

    move-wide/from16 v22, v80

    add-int/lit8 v4, v4, 0x1

    const/16 v75, 0x1

    :cond_6
    if-nez v75, :cond_7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const/4 v6, 0x1

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_7
    :goto_5
    if-nez v75, :cond_8

    move-object/from16 v7, v73

    move/from16 v8, v70

    move/from16 v53, v69

    move/from16 v9, v82

    move/from16 v66, v85

    const/4 v5, 0x1

    aget v17, v67, v5

    const/4 v5, 0x3

    aget v19, v67, v5

    move/from16 v18, v84

    const/4 v5, 0x5

    aget v44, v67, v5

    move-wide/from16 v22, v80

    move-wide/from16 v10, v80

    const/4 v4, 0x1

    :cond_8
    if-eqz v68, :cond_2

    if-eqz v51, :cond_2

    goto/16 :goto_1

    :cond_9
    const/16 v46, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v13, 0x1

    move-object/from16 v12, p1

    move-object v14, v7

    move v15, v8

    move/from16 v16, v9

    move-wide/from16 v20, v10

    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_5

    :cond_b
    if-nez v68, :cond_c

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    instance-of v5, v5, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_c

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    check-cast v5, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_c

    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v68

    check-cast v68, Landroid/icu/util/AnnualTimeZoneRule;

    :cond_c
    if-lez v76, :cond_e

    add-int v5, v79, v76

    move/from16 v0, v85

    if-ne v0, v5, :cond_d

    move-object/from16 v0, v73

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move/from16 v0, v28

    move/from16 v1, v70

    if-ne v0, v1, :cond_d

    move/from16 v0, v29

    move/from16 v1, v82

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    aget v5, v67, v5

    move/from16 v0, v37

    if-ne v0, v5, :cond_d

    const/4 v5, 0x3

    aget v5, v67, v5

    move/from16 v0, v39

    if-ne v0, v5, :cond_d

    move/from16 v0, v38

    move/from16 v1, v84

    if-ne v0, v1, :cond_d

    const/4 v5, 0x5

    aget v5, v67, v5

    move/from16 v0, v78

    if-ne v0, v5, :cond_d

    move-wide/from16 v42, v80

    add-int/lit8 v76, v76, 0x1

    const/16 v75, 0x1

    :cond_d
    if-nez v75, :cond_e

    const/4 v5, 0x1

    move/from16 v0, v76

    if-ne v0, v5, :cond_10

    const/16 v26, 0x0

    const/16 v32, 0x1

    move-object/from16 v25, p1

    invoke-static/range {v25 .. v32}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_e
    :goto_6
    if-nez v75, :cond_f

    move-object/from16 v27, v73

    move/from16 v28, v70

    move/from16 v77, v69

    move/from16 v29, v82

    move/from16 v79, v85

    const/4 v5, 0x1

    aget v37, v67, v5

    const/4 v5, 0x3

    aget v39, v67, v5

    move/from16 v38, v84

    const/4 v5, 0x5

    aget v78, v67, v5

    move-wide/from16 v42, v80

    move-wide/from16 v30, v80

    const/16 v76, 0x1

    :cond_f
    if-eqz v68, :cond_2

    if-eqz v51, :cond_2

    goto/16 :goto_1

    :cond_10
    const/16 v33, 0x0

    move-object/from16 v32, p1

    move-object/from16 v34, v27

    move/from16 v35, v28

    move/from16 v36, v29

    move-wide/from16 v40, v30

    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_6

    :cond_11
    const/16 v46, 0x0

    goto/16 :goto_2

    :cond_12
    if-lez v4, :cond_13

    if-nez v51, :cond_15

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const/4 v6, 0x1

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_13
    :goto_7
    if-lez v76, :cond_3

    if-nez v68, :cond_1b

    const/4 v5, 0x1

    move/from16 v0, v76

    if-ne v0, v5, :cond_1a

    const/16 v26, 0x0

    const/16 v32, 0x1

    move-object/from16 v25, p1

    invoke-static/range {v25 .. v32}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_3

    :cond_14
    const/4 v13, 0x1

    move-object/from16 v12, p1

    move-object v14, v7

    move v15, v8

    move/from16 v16, v9

    move-wide/from16 v20, v10

    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_7

    :cond_15
    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    sub-int v52, v8, v53

    const/16 v50, 0x1

    move-object/from16 v49, p1

    move-wide/from16 v54, v10

    invoke-static/range {v49 .. v55}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_7

    :cond_16
    invoke-virtual/range {v51 .. v51}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v5

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v5}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v55, 0x1

    const-wide v64, 0x7fffffffffffffffL

    move-object/from16 v54, p1

    move-object/from16 v56, v7

    move/from16 v57, v8

    move/from16 v58, v9

    move/from16 v59, v17

    move/from16 v60, v18

    move/from16 v61, v19

    move-wide/from16 v62, v10

    invoke-static/range {v54 .. v65}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_7

    :cond_17
    const/4 v13, 0x1

    move-object/from16 v12, p1

    move-object v14, v7

    move v15, v8

    move/from16 v16, v9

    move-wide/from16 v20, v10

    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v24, v8, v53

    const/16 v26, 0x0

    move-object/from16 v21, v51

    move/from16 v25, v53

    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v74

    sget-boolean v5, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    if-nez v5, :cond_19

    if-eqz v74, :cond_18

    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_19

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_18
    const/4 v5, 0x0

    goto :goto_8

    :cond_19
    if-eqz v74, :cond_13

    sub-int v52, v8, v53

    invoke-virtual/range {v74 .. v74}, Ljava/util/Date;->getTime()J

    move-result-wide v54

    const/16 v50, 0x1

    move-object/from16 v49, p1

    invoke-static/range {v49 .. v55}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto/16 :goto_7

    :cond_1a
    const/16 v33, 0x0

    move-object/from16 v32, p1

    move-object/from16 v34, v27

    move/from16 v35, v28

    move/from16 v36, v29

    move-wide/from16 v40, v30

    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_1b
    const/4 v5, 0x1

    move/from16 v0, v76

    if-ne v0, v5, :cond_1c

    sub-int v58, v28, v77

    const/16 v56, 0x0

    move-object/from16 v55, p1

    move-object/from16 v57, v68

    move/from16 v59, v77

    move-wide/from16 v60, v30

    invoke-static/range {v55 .. v61}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto/16 :goto_3

    :cond_1c
    invoke-virtual/range {v68 .. v68}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v5

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2, v5}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v55, 0x0

    const-wide v64, 0x7fffffffffffffffL

    move-object/from16 v54, p1

    move-object/from16 v56, v27

    move/from16 v57, v28

    move/from16 v58, v29

    move/from16 v59, v37

    move/from16 v60, v38

    move/from16 v61, v39

    move-wide/from16 v62, v30

    invoke-static/range {v54 .. v65}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_1d
    const/16 v33, 0x0

    move-object/from16 v32, p1

    move-object/from16 v34, v27

    move/from16 v35, v28

    move/from16 v36, v29

    move-wide/from16 v40, v30

    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v58, v28, v77

    const/16 v60, 0x0

    move-object/from16 v55, v68

    move-wide/from16 v56, v42

    move/from16 v59, v77

    invoke-virtual/range {v55 .. v60}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v74

    sget-boolean v5, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-eqz v74, :cond_1e

    const/4 v5, 0x1

    :goto_9
    if-nez v5, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1e
    const/4 v5, 0x0

    goto :goto_9

    :cond_1f
    if-eqz v74, :cond_3

    sub-int v58, v28, v77

    invoke-virtual/range {v74 .. v74}, Ljava/util/Date;->getTime()J

    move-result-wide v60

    const/16 v56, 0x0

    move-object/from16 v55, p1

    move-object/from16 v57, v68

    move/from16 v59, v77

    invoke-static/range {v55 .. v61}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto/16 :goto_3
.end method

.method private static writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p7

    invoke-static/range {v1 .. v7}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string/jumbo v0, "BYMONTHDAY"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p9, v0

    if-eqz v0, :cond_0

    int-to-long v0, p3

    add-long v0, v0, p9

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p8

    invoke-static/range {v1 .. v7}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string/jumbo v0, "BYDAY"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v0, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p7, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p10, v0

    if-eqz v0, :cond_0

    int-to-long v0, p3

    add-long v0, v0, p10

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v2, p6, 0x7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p6, 0x6

    div-int/lit8 v8, v2, 0x7

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v8, v2, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p8

    invoke-static/range {v3 .. v9}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move/from16 v17, p6

    const/16 v19, 0x7

    if-gtz p6, :cond_4

    rsub-int/lit8 v7, p6, 0x1

    rsub-int/lit8 v19, v7, 0x7

    add-int/lit8 v2, p5, -0x1

    if-gez v2, :cond_3

    const/16 v4, 0xb

    :goto_1
    neg-int v5, v7

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v3, p0

    move/from16 v6, p7

    move/from16 v10, p3

    invoke-static/range {v3 .. v10}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    const/16 v17, 0x1

    :cond_2
    :goto_2
    move-object/from16 v15, p0

    move/from16 v16, p5

    move/from16 v18, p7

    move-wide/from16 v20, p10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    invoke-static/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v4, p5, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, p6, 0x6

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p5

    if-le v2, v3, :cond_2

    add-int/lit8 v2, p6, 0x6

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p5

    sub-int v13, v2, v3

    rsub-int/lit8 v19, v13, 0x7

    add-int/lit8 v2, p5, 0x1

    const/16 v3, 0xb

    if-le v2, v3, :cond_5

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x1

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v9, p0

    move/from16 v12, p7

    move/from16 v16, p3

    invoke-static/range {v9 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    goto :goto_2

    :cond_5
    add-int/lit8 v10, p5, 0x1

    goto :goto_3
.end method

.method private static writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v2, p2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-gez p2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string/jumbo v3, "BYDAY"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v3, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, ";"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "BYMONTHDAY"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_2
    if-ge v0, p4, :cond_3

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p1

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p5, v4

    if-eqz v3, :cond_4

    int-to-long v4, p7

    add-long/2addr v4, p5

    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v2, p6, 0x7

    if-nez v2, :cond_0

    div-int/lit8 v8, p6, 0x7

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_1

    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v8, v2, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    const/16 v2, 0x1d

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_2
    add-int/lit8 v8, p6, -0x6

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0
.end method

.method private static writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    if-eqz p7, :cond_0

    const-string/jumbo v0, "RDATE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long v0, p3

    add-long/2addr v0, p5

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/VTimeZone;

    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v1

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    iput-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-object v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public getRawOffset()I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public getTZURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z

    move-result v0

    return v0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/icu/util/VTimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    nop

    nop

    iget-object v1, p1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v0

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v0

    return v0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-void
.end method

.method public setRawOffset(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->setRawOffset(I)V

    return-void
.end method

.method public setTZURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-void
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "TZURL:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "TZURL"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "LAST-MODIFIED:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "LAST-MODIFIED"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    :cond_5
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-direct {p0, p1, v4, v1}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public write(Ljava/io/Writer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v4, p2, p3}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v2, v5, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/4 v1, 0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/Partial@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    :cond_1
    invoke-direct {p0, p1, v2, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method

.method public writeSimple(Ljava/io/Writer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v4, p2, p3}, Landroid/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v2, v5, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/4 v1, 0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/Simple@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    :cond_1
    invoke-direct {p0, p1, v2, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method
