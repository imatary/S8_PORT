.class public Lcom/sec/android/gallery3d/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field private static final CLUSTER_AUTO_BY_FACE_RECOGNITION:I = 0x100

.field public static final CLUSTER_BY_ALBUM:I = 0x1

.field public static final CLUSTER_BY_CHANNEL:I = 0x400000

.field public static final CLUSTER_BY_FACE:I = 0x20

.field public static final CLUSTER_BY_FACE_CONFIRMED:I = 0x8000

.field public static final CLUSTER_BY_FACE_CONFIRMED_RECOMMEND:I = 0x10000

.field public static final CLUSTER_BY_FACE_NAMED:I = 0x4000

.field public static final CLUSTER_BY_FAVORITES:I = 0x2000

.field public static final CLUSTER_BY_FESTIVAL:I = 0x100000

.field private static final CLUSTER_BY_GALLERYSEARCH:I = 0x40000

.field public static final CLUSTER_BY_GALLERYSEARCHALL:I = 0x80000

.field public static final CLUSTER_BY_GROUP:I = 0x80

.field private static final CLUSTER_BY_LOCATION:I = 0x4

.field private static final CLUSTER_BY_ONEALBUM:I = 0x200

.field private static final CLUSTER_BY_SEARCH:I = 0x800

.field private static final CLUSTER_BY_SIZE:I = 0x10

.field private static final CLUSTER_BY_SMART:I = 0x200000

.field private static final CLUSTER_BY_TAG:I = 0x8

.field public static final CLUSTER_BY_TIME:I = 0x2

.field private static final CLUSTER_BY_TIME_SEARCH:I = 0x1000

.field private static final CLUSTER_TYPE_AUTOFACE:Ljava/lang/String; = "autoface"

.field private static final CLUSTER_TYPE_CHANNEL:Ljava/lang/String; = "channel"

.field public static final CLUSTER_TYPE_FACE:Ljava/lang/String; = "face"

.field private static final CLUSTER_TYPE_FACE_CONFIRMED:Ljava/lang/String; = "face_confirmed"

.field private static final CLUSTER_TYPE_FACE_CONFIRMED_RECOMMEND:Ljava/lang/String; = "face_confirmed_recommend"

.field private static final CLUSTER_TYPE_FACE_NAMED:Ljava/lang/String; = "face_named"

.field private static final CLUSTER_TYPE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final CLUSTER_TYPE_FESTIVAL:Ljava/lang/String; = "festival"

.field private static final CLUSTER_TYPE_GALLERYSEARCH:Ljava/lang/String; = "gallerysearch"

.field private static final CLUSTER_TYPE_GALLERYSEARCHALL:Ljava/lang/String; = "gallerysearchall"

.field public static final CLUSTER_TYPE_GROUP:Ljava/lang/String; = "group"

.field private static final CLUSTER_TYPE_LOCATION:Ljava/lang/String; = "location"

.field public static final CLUSTER_TYPE_PEOPLE:Ljava/lang/String; = "people"

.field private static final CLUSTER_TYPE_SEARCH:Ljava/lang/String; = "search"

.field private static final CLUSTER_TYPE_SIZE:Ljava/lang/String; = "size"

.field private static final CLUSTER_TYPE_SMART:Ljava/lang/String; = "smart"

.field private static final CLUSTER_TYPE_TAG:Ljava/lang/String; = "tag"

.field private static final CLUSTER_TYPE_TIME:Ljava/lang/String; = "time"

.field private static final CLUSTER_TYPE_TIME_SEARCH:Ljava/lang/String; = "time_search"

.field private static final DEBUG:Z = false

.field private static final FILTER_ALL:I = 0x4

.field private static final FILTER_IMAGE_ONLY:I = 0x1

.field public static final FILTER_MIMETYPE_ALL:Ljava/lang/String; = "all"

.field private static final FILTER_VIDEO_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFilerBasePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object p0

    :sswitch_0
    const-string/jumbo v0, "time"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/cluster/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "location"

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "tag"

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "size"

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "face"

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "face_named"

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "face_confirmed"

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "face_confirmed_recommend"

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "group"

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "autoface"

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "festival"

    goto :goto_1

    :sswitch_b
    const-string/jumbo v0, "onealbum"

    goto :goto_1

    :sswitch_c
    const-string/jumbo v0, "search"

    goto :goto_1

    :sswitch_d
    const-string/jumbo v0, "gallerysearchall"

    goto :goto_1

    :sswitch_e
    const-string/jumbo v0, "gallerysearch"

    goto :goto_1

    :sswitch_f
    const-string/jumbo v0, "time_search"

    goto :goto_1

    :sswitch_10
    const-string/jumbo v0, "favorites"

    goto :goto_1

    :sswitch_11
    const-string/jumbo v0, "smart"

    goto :goto_1

    :sswitch_12
    const-string/jumbo v0, "channel"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x80 -> :sswitch_8
        0x100 -> :sswitch_9
        0x200 -> :sswitch_b
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_10
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_7
        0x40000 -> :sswitch_e
        0x80000 -> :sswitch_d
        0x100000 -> :sswitch_a
        0x200000 -> :sswitch_11
        0x400000 -> :sswitch_12
    .end sparse-switch
.end method

.method private static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static newFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x2

    :goto_1
    invoke-static {p0, v0, p2}, Lcom/sec/android/gallery3d/app/FilterUtils;->getFilerBasePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static newFilterPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/filter/folder/1/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/filter/folder/0/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Z

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v7

    const-string/jumbo v6, "cluster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aput-boolean v8, p1, v7

    aget-object v5, v3, v8

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object p0, v5, v7

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    if-lez v1, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Z

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x7b

    const/4 v8, 0x1

    const/4 v6, 0x0

    aget-boolean v5, p1, v6

    if-eqz v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v6

    const-string/jumbo v7, "filter"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v8

    const-string/jumbo v7, "mediatype"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aput-boolean v8, p1, v6

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object p0, v5, v6

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, v3, v5

    const/16 v8, 0x2f

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_2
    array-length v8, v4

    if-ge v0, v8, :cond_3

    if-lez v0, :cond_2

    const/16 v8, 0x2c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v8, v4, v0

    invoke-static {v8, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x7d

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static switchFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static switchFilterPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/app/FilterUtils;->removeOneFilterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Lcom/sec/android/gallery3d/app/FilterUtils$1;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/core/TabTagType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2000

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x200000

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/app/FilterUtils$1;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$MediaFilterType:[I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
