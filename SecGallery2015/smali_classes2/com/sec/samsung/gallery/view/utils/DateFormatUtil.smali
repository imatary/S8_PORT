.class public Lcom/sec/samsung/gallery/view/utils/DateFormatUtil;
.super Ljava/lang/Object;
.source "DateFormatUtil.java"


# static fields
.field static final ONE_DAY:J = 0x15180L

.field static final ONE_HOUR:J = 0xe10L

.field static final ONE_MINUTE:J = 0x3cL

.field static final TIME_STAMP_FORMAT:Ljava/lang/String; = "HH:mm a, MM/dd/YY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getStringInHours(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    int-to-long v2, p1

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getStringInMinutes(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    int-to-long v2, p1

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getStringInSeconds(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTimeString(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0xe10

    const-wide/16 v4, 0x3c

    sub-long v2, p1, p3

    long-to-int v0, v2

    if-ltz v0, :cond_0

    int-to-long v2, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/view/utils/DateFormatUtil;->getStringInSeconds(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    int-to-long v2, v0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    int-to-long v2, v0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/view/utils/DateFormatUtil;->getStringInMinutes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    int-to-long v2, v0

    cmp-long v1, v6, v2

    if-gtz v1, :cond_2

    int-to-long v2, v0

    const-wide/32 v4, 0x15180

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/view/utils/DateFormatUtil;->getStringInHours(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm a, MM/dd/YY"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
