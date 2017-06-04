.class public final Lcom/adobe/internal/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method public static parse(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/internal/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPDateTime;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/internal/xmp/XMPDateTime;)Lcom/adobe/internal/xmp/XMPDateTime;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v13, 0x3a

    const/16 v12, 0x5a

    const/16 v11, 0x2b

    const/16 v10, 0x2d

    const/4 v9, 0x5

    if-nez p0, :cond_0

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Parameter must not be null"

    const/4 v9, 0x4

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    return-object p1

    :cond_2
    new-instance v1, Lcom/adobe/internal/xmp/impl/ParseState;

    invoke-direct {v1, p0}, Lcom/adobe/internal/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/adobe/internal/xmp/impl/ParseState;->ch(I)C

    move-result v7

    if-ne v7, v10, :cond_3

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    :cond_3
    const-string/jumbo v7, "Invalid year in date string"

    const/16 v8, 0x270f

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_4

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after year"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/adobe/internal/xmp/impl/ParseState;->ch(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    neg-int v6, v6

    :cond_5
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setYear(I)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid month in date string"

    const/16 v8, 0xc

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_6

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after month"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_6
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setMonth(I)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid day in date string"

    const/16 v8, 0x1f

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x54

    if-eq v7, v8, :cond_7

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after day"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_7
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setDay(I)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid hour in date string"

    const/16 v8, 0x17

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setHour(I)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_9

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid minute in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v13, :cond_8

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_8

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_8

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_8

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after minute"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_8
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setMinute(I)V

    :cond_9
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_10

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid whole seconds in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_a

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_a

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_a

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_a

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after whole seconds"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_a
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setSecond(I)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_e

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->pos()I

    move-result v0

    const-string/jumbo v7, "Invalid fractional seconds in date string"

    const v8, 0x3b9ac9ff

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_b

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_b

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_b

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after fractional second"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_b
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->pos()I

    move-result v7

    sub-int v0, v7, v0

    :goto_0
    const/16 v7, 0x9

    if-le v0, v7, :cond_c

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_c
    :goto_1
    const/16 v7, 0x9

    if-ge v0, v7, :cond_d

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    invoke-interface {p1, v6}, Lcom/adobe/internal/xmp/XMPDateTime;->setNanoSecond(I)V

    :cond_e
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v12, :cond_11

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    :cond_f
    :goto_2
    mul-int/lit16 v7, v3, 0xe10

    mul-int/lit16 v7, v7, 0x3e8

    mul-int/lit8 v8, v4, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    mul-int v2, v7, v5

    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string/jumbo v8, ""

    invoke-direct {v7, v2, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v7}, Lcom/adobe/internal/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, extra chars at end"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_10
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_e

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_e

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_e

    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after time"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_11
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v11, :cond_12

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid time zone hour in date string"

    const/16 v8, 0x17

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_14

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->skip()V

    const-string/jumbo v7, "Invalid time zone minute in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/internal/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_12
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v10, :cond_13

    const/4 v5, -0x1

    goto :goto_3

    :cond_13
    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_14
    new-instance v7, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v8, "Invalid date string, after time zone hour"

    invoke-direct {v7, v8, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public static render(Lcom/adobe/internal/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 16

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->hasDate()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "0000"

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getYear()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getMonth()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const-string/jumbo v9, "\'-\'00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getMonth()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getDay()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getDay()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->hasTime()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getHour()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getMinute()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getSecond()I

    move-result v9

    int-to-double v10, v9

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    int-to-double v12, v9

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v12, v14

    add-double v4, v10, v12

    const-string/jumbo v9, ":00.#########"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->hasTimeZone()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-interface/range {p0 .. p0}, Lcom/adobe/internal/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v9, 0x5a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_5
    const v9, 0x36ee80

    div-int v3, v2, v9

    const v9, 0x36ee80

    rem-int v9, v2, v9

    const v10, 0xea60

    div-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const-string/jumbo v9, "+00;-00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v10, v3

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, ":00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
