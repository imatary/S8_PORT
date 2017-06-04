.class Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;
.super Ljava/lang/Object;
.source "GalleryEventTimeUtils.java"


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    return-void
.end method


# virtual methods
.method public getDailyEventAlarm()J
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public getPastOneDay()J
    .locals 7

    const/16 v5, 0x3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x17

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public getQuarterlyEventAlarm()J
    .locals 9

    const/16 v8, 0x1e

    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v7, v1, 0x3

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    const/16 v6, 0x9

    if-lt v1, v6, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    if-lt v1, v8, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    move v3, v8

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    move v2, v7

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_0
.end method

.method public getStartOfPastQuarter()J
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public getStartOfPastYear()J
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public getYearlyEventAlarm()J
    .locals 7

    const/16 v6, 0xa

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v3, 0x1f

    const/16 v2, 0xb

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->month:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->day:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->year:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_0
.end method
