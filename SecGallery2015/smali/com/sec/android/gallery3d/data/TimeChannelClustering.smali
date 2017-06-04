.class Lcom/sec/android/gallery3d/data/TimeChannelClustering;
.super Ljava/lang/Object;
.source "TimeChannelClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/TimeChannelClustering$DateComparator;
    }
.end annotation


# static fields
.field private static final DAY_MODE:I = 0x1

.field private static final DAY_UINT:J = 0x5265c00L

.field private static final GALLERY_LIMIT_ADDRESS_LEVEL:I = 0x5

.field private static final LOCATION_ADDR_BLANK:Ljava/lang/String; = " "

.field private static final LOCATION_ADDR_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final LOCATION_ADDR_NULL:Ljava/lang/String; = "null"

.field private static final LOCATION_LIMIT_COUNT:I = 0x3

.field private static final MONTH_MODE:I = 0x3

.field private static final RAW_SQL_MAIN_DB:Landroid/net/Uri;

.field private static final RAW_SQL_URI:Landroid/net/Uri;

.field private static final SAMSUNG_LINK_PROVIDE_GEO_ADDRESS_LEVEL:I = 0x9

.field private static final TAG:Ljava/lang/String; = "TimeChannelClustering"

.field private static final YEAR_MODE:I = 0x4

.field private static count:I

.field private static final mTakeAddressLevel:[Z


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private isToday:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

.field private mCurrentTime:J

.field private final mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathString:Ljava/lang/String;

.field private mReverseOrder:Z

.field private mSuggestionAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SuggestionAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private previousDayValuse:I

.field private previousMonth:I

.field private previousYear:I

.field private final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private todayMonth:I

.field private todayYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "content://media/external/raw_sql"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->RAW_SQL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mTakeAddressLevel:[Z

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mReverseOrder:Z

    new-instance v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/TimeChannelClustering$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/TimeChannelClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->sDateComparator:Ljava/util/Comparator;

    const-string/jumbo v0, "/suggestion/{/channel/{/local/item/all,}}/channel/"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mPathString:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method

.method private addToTimeClusterList()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->generateCaption(Landroid/content/Context;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mReverseOrder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    new-instance v0, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/suggestion/{/channel/{/local/item/all,}}/channel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;JI)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->generateCaption(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->generateCaption(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private cluster()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mReverseOrder:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mItemList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->initTime(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mItemList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->doClustering(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TimeChannelClustering"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v8, -0x1

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->isToday:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayMonth:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    :cond_0
    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousDayValuse:I

    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    new-instance v5, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/suggestion/{/channel/{/local/item/all,}}/channel/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    const-wide/16 v10, 0x1

    invoke-direct {v5, v8, v10, v11, v12}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;JI)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    sub-long/2addr v8, v6

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v3, v8

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    if-ne v5, v2, :cond_4

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousDayValuse:I

    if-eq v3, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->addToTimeClusterList()V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->addItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput v3, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousDayValuse:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    add-int/lit8 v8, v2, 0x1

    if-ne v5, v8, :cond_6

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    if-ne v1, v5, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    if-eq v2, v5, :cond_2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->addToTimeClusterList()V

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    if-eq v2, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->addToTimeClusterList()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->addToTimeClusterList()V

    return-void
.end method

.method private doClustering(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->setLocations()V

    return-void
.end method

.method private getLocationNameSet(Lcom/sec/android/gallery3d/data/SuggestionAlbum;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/SuggestionAlbum;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[D>;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const-string/jumbo v22, "ORDER BY COUNT(addr) DESC LIMIT 3"

    const-string/jumbo v20, "GROUP BY addr"

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getMediaItemCount()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v16

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getMediaItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v18

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datetaken BETWEEN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v2, "SELECT COUNT(addr), addr, latitude, longitude FROM files WHERE "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "media_type=1 or media_type=3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "addr != \"\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "TimeChannelClustering"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v27, v0

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v27, v2

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v27, v2

    const-string/jumbo v2, "\\|"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/4 v10, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v26, v24, v2

    move-object/from16 v0, v24

    array-length v5, v0

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, " "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "null"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mTakeAddressLevel:[Z

    aget-boolean v5, v5, v10

    if-nez v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    if-nez v11, :cond_7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x5

    if-ne v10, v5, :cond_4

    if-eqz v26, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_9
    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-void

    :catch_0
    move-exception v15

    :try_start_1
    const-string/jumbo v2, "TimeChannelClustering"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private initTime(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayMonth:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    sub-long/2addr v0, v8

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousMonth:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousYear:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->todayMonth:I

    invoke-virtual {v7, v0, v1, v10}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->isToday:Z

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->previousDayValuse:I

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrentTime:J

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->updateTimeTableWithLatestDay(J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->isToday:Z

    goto :goto_0
.end method

.method private setLocations()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->getHasLocation()Z

    move-result v15

    if-eqz v15, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    const/16 v16, 0x2

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->getLocationNameSet(Lcom/sec/android/gallery3d/data/SuggestionAlbum;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v15, 0x1

    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    if-eqz v2, :cond_0

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-object v15, v9, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-wide v18, v7, v17

    aput-wide v18, v15, v16

    const/4 v15, 0x0

    aget-object v15, v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-wide v18, v7, v17

    aput-wide v18, v15, v16

    :cond_0
    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v15, 0x1

    aget-object v15, v9, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-wide v18, v8, v17

    aput-wide v18, v15, v16

    const/4 v15, 0x1

    aget-object v15, v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-wide v18, v8, v17

    aput-wide v18, v15, v16

    if-nez v4, :cond_3

    const-string/jumbo v15, " & "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;->setAddrValues([[D)V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, " & "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    const-string/jumbo v15, "TimeChannelClustering"

    invoke-virtual {v11}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/16 v15, 0x2c

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, " &..."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public getSuggestionAlbumSet(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Lcom/sec/android/gallery3d/data/MediaSet;"
        }
    .end annotation

    const-wide/16 v4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iput-object p2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/suggestion/{/channel/{/local/item/all,}}/channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    add-int/lit8 v6, v3, 0x1

    sput v6, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/sec/android/gallery3d/data/SuggestionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;JI)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mCurrSuggestionAlbum:Lcom/sec/android/gallery3d/data/SuggestionAlbum;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->cluster()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;

    const-string/jumbo v1, "/suggestion/{/channel/{/local/item/all,}}/channel/0"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;J)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->mSuggestionAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->addSetList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
