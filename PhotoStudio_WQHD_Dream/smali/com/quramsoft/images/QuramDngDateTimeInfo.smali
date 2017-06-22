.class public Lcom/quramsoft/images/QuramDngDateTimeInfo;
.super Ljava/lang/Object;
.source "QuramDngDateTimeInfo.java"


# instance fields
.field mDateOnly:Z

.field mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

.field mSubseconds:Ljava/lang/String;

.field mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/quramsoft/images/QuramDngDateTime;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramDngDateTime;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    new-instance v0, Lcom/quramsoft/images/QuramDngTimeZone;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramDngTimeZone;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    return-void
.end method


# virtual methods
.method public gerSubseconds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mSubseconds:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Lcom/quramsoft/images/QuramDngDateTime;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    return-object v0
.end method

.method public getTimeZone()Lcom/quramsoft/images/QuramDngTimeZone;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    return-object v0
.end method

.method public isDateOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateOnly:Z

    return v0
.end method

.method setTimeInfo(Ljava/lang/String;)V
    .locals 12

    const-string v10, "T"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-gt v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateOnly:Z

    array-length v10, v1

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_3

    const/4 v10, 0x0

    aget-object v10, v0, v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mYear:I

    :goto_1
    array-length v10, v0

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    aget-object v10, v0, v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mMonth:I

    :goto_2
    array-length v10, v0

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    const/4 v10, 0x2

    aget-object v10, v0, v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x2

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mDay:I

    :cond_0
    :goto_3
    array-length v10, v1

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    iget-boolean v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateOnly:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    aget-object v7, v1, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_6

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x0

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mYear:I

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x0

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mMonth:I

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    const/4 v11, 0x0

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mDay:I

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x6

    const/16 v11, 0x8

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mHour:I

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mMinute:I

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mDateTime:Lcom/quramsoft/images/QuramDngDateTime;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/quramsoft/images/QuramDngDateTime;->mSecond:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x9

    if-lt v10, v11, :cond_1

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_8

    const/16 v10, 0x9

    const/16 v11, 0x9

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mSubseconds:Ljava/lang/String;

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0xb

    const/16 v11, 0xd

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xe

    const/16 v11, 0x10

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v4, v10, v11

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_7

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    neg-int v11, v4

    iput v11, v10, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    goto/16 :goto_4

    :cond_7
    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    iput v4, v10, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    goto/16 :goto_4

    :cond_8
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x9

    const/16 v11, 0xb

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xc

    const/16 v11, 0xe

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v4, v10, v11

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_9

    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    neg-int v11, v4

    iput v11, v10, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/quramsoft/images/QuramDngDateTimeInfo;->mTimeZone:Lcom/quramsoft/images/QuramDngTimeZone;

    iput v4, v10, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    goto/16 :goto_4
.end method
