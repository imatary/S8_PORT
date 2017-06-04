.class public Lcom/sec/android/gallery3d/util/GalleryTimeUtils;
.super Ljava/lang/Object;
.source "GalleryTimeUtils.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "GalleryTimeUtils"

.field private static final THREE_WEEK:J = 0x6c258c00L

.field private static sSmartClusterZoomMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->sSmartClusterZoomMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmartClusterZoomMode()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->sSmartClusterZoomMode:I

    return v0
.end method

.method public static setSmartClusterZoomMode(I)V
    .locals 3

    const-string/jumbo v0, "GalleryTimeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current smart cluster zoom mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->sSmartClusterZoomMode:I

    return-void
.end method

.method public static updateTimeTableWithLatestDay(J)V
    .locals 14

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v7, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const-wide/32 v0, 0x5265c00

    sub-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long v10, v0, v2

    const-wide/32 v0, 0x6c258c00

    sub-long v12, v10, v0

    invoke-virtual {v7, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method
