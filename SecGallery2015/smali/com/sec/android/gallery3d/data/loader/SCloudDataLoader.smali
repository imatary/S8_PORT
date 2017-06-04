.class public Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;
.super Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;
.source "SCloudDataLoader.java"


# static fields
.field private static final INDEX_FIELD_CLOUD_ID:I = 0x3

.field private static final INDEX_FIELD_IS_CLOUD:I = 0x2

.field private static final INDEX_FIELD_MEDIA_ID:I = 0x0

.field private static final INDEX_FIELD_MEDIA_TYPE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "cloud_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getPostPathFilter(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getGroupId()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, " and ((group_id != %1$d ) and ( datetaken  >  %2$d  or ( datetaken  =  %2$d  and  _id  >  %3$d )))"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getGroupId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getDateTaken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getMediaId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, " and ( datetaken  >  %1$d  or ( datetaken  =  %1$d  and  _id  >  %2$d ))"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getDateTaken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getMediaId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected convertCursorToMediaId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected convertCursorToPath(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/Path;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v8, :cond_1

    if-ne v4, v7, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    sget-object v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_1
    if-ne v4, v7, :cond_2

    sget-object v5, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_2
    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_2
.end method

.method public bridge synthetic getCount()I
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getCount()I

    move-result v0

    return v0
.end method

.method protected getProjection(Lcom/sec/android/gallery3d/data/Path;)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%1$s, %2$s, %3$s, %4$s, %5$s\nfrom (\n        select %5$s, %1$s, %2$s, %3$s, %4$s, group_id\n        from %6$s\n        where group_id != 0 and device_id = 1 and (file_status = %7$d or file_status = %8$d) %9$s)\ngroup by group_id\nhaving group_id not in (\n        select distinct group_id\n        from %6$s\n        where best_image = 1 and device_id = 1 and (file_status = %7$d or file_status = %8$d) %9$s)\nunion\nselect %1$s, %2$s, %3$s, %4$s, %5$s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    sget-object v4, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    sget-object v4, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v9

    sget-object v4, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const-string/jumbo v5, "files"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->getPostPathFilter(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    return-object v0
.end method

.method public bridge synthetic getRangePath(II)Ljava/util/ArrayList;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getRangePath(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder(II)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, " %1$s DESC, %2$s DESC LIMIT %3$d, %4$d "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "datetaken"

    aput-object v3, v2, v4

    const-string/jumbo v3, "media_id"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, " %1$s DESC, %2$s DESC "

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "datetaken"

    aput-object v3, v2, v4

    const-string/jumbo v3, "media_id"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getWhere(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, " ( ( ( best_image = 1 ) or ( group_id = 0) ) and (device_id = 1) and ( file_status = %1$d or file_status = %2$d ) ) "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->getPostPathFilter(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;->hasFilter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " and (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic indexOf(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->indexOf(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic load(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->load(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic loadAll()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->loadAll()Z

    move-result v0

    return v0
.end method
