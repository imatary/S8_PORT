.class public Lcom/sec/android/gallery3d/data/FaceClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;,
        Lcom/sec/android/gallery3d/data/FaceClustering$Value;,
        Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;,
        Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceClustering"

.field private static final exceptCloudCache:Ljava/lang/String;


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFilterConfirmedRecommendCluster:Z

.field private final mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCategory:Z

.field private final mIsUsedCMH:Z

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameId:Ljava/lang/String;

.field private final mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyFilterConfirmedCluster:Z

.field private mOnlyFilterNamedCluster:Z

.field private final mPersonIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "data not like\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CLOUD_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/FaceClustering;->exceptCloudCache:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameIDs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterNamedCluster:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterConfirmedCluster:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mFilterConfirmedRecommendCluster:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterNamedCluster:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterConfirmedCluster:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mFilterConfirmedRecommendCluster:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameIDs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterNamedCluster:Z

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterConfirmedCluster:Z

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mFilterConfirmedRecommendCluster:Z

    return-void
.end method

.method private getPath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 12

    const/4 v2, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    move v11, v2

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPath(IIIIIIIIIII)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method private getPath(IIIIIIIIIII)Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const/16 v3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/face/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "people"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "/face/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "people"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPersonName(Landroid/content/ContentResolver;III)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    const-string/jumbo v9, ""

    if-le p2, v0, :cond_1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/access/face/FaceData;->PERSONS_URI:Landroid/net/Uri;

    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "FaceClustering"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "profile/Me"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0256

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "FaceClustering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    if-lez p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    const v3, 0x7f0a049b

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "2131362971_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "2131362962"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0492

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "FaceClustering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCluster index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") error. size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getClusterAddrValues(I)[[D
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterAddrValues(I)[[D

    move-result-object v0

    return-object v0
.end method

.method public getClusterKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getClusterLocation(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterLocation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "FaceClustering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getClusterName index("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") error. size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPersonId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 67

    const-string/jumbo v6, "FaceClustering"

    const-string/jumbo v12, "FaceClustering start!!"

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/util/ArcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    move/from16 v41, v0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    if-eqz v6, :cond_2

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    new-instance v47, Ljava/util/HashMap;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashMap;-><init>()V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    const-string/jumbo v6, "Gallery_Performance"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FaceClustering : run() DCM query Start : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v54

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    if-eqz v6, :cond_8

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device_id"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " = 1 and "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "scene_name"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " = ?"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "media_id"

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "datetaken"

    aput-object v13, v6, v12

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "People"

    aput-object v13, v8, v12

    const/4 v9, 0x0

    const-string/jumbo v10, "FaceClustering"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    :goto_0
    const-string/jumbo v6, "Gallery_Performance"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FaceClustering : run() DCM query end : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v54

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v28, :cond_1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/4 v6, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    invoke-static/range {v28 .. v28}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    new-instance v64, Ljava/util/HashMap;

    invoke-direct/range {v64 .. v64}, Ljava/util/HashMap;-><init>()V

    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    const/16 v63, 0x0

    new-instance v38, Landroid/util/SparseArray;

    invoke-direct/range {v38 .. v38}, Landroid/util/SparseArray;-><init>()V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v31, 0x0

    new-instance v51, Ljava/util/HashMap;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    sget-object v5, Lcom/sec/samsung/gallery/access/face/FaceData;->FACES_URI:Landroid/net/Uri;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "person_id"

    aput-object v13, v6, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "recommended_id"

    aput-object v13, v6, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "group_id"

    aput-object v13, v6, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "face_data"

    aput-object v13, v6, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "auto_group"

    aput-object v13, v6, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "pos_left"

    aput-object v13, v6, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "pos_top"

    aput-object v13, v6, v12

    const/16 v12, 0x8

    const-string/jumbo v13, "pos_right"

    aput-object v13, v6, v12

    const/16 v12, 0x9

    const-string/jumbo v13, "pos_bottom"

    aput-object v13, v6, v12

    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsUsedCMH:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "media_id"

    :goto_2
    aput-object v12, v6, v13

    const/16 v12, 0xb

    const-string/jumbo v13, "similarity"

    aput-object v13, v6, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sec/android/gallery3d/data/FaceClustering;->exceptCloudCache:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "AND usable=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const-string/jumbo v9, "recommended_id desc,group_id desc"

    const-string/jumbo v10, "FaceClustering"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    if-eqz v31, :cond_5

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    const/4 v6, 0x2

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v6, 0x3

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v6, 0x4

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/4 v6, 0x5

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v6, 0x6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/4 v6, 0x7

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    const/16 v6, 0x8

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    const/16 v6, 0x9

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v6, 0xa

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const/16 v6, 0xb

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    if-eqz v6, :cond_c

    if-eqz v22, :cond_4

    if-nez v47, :cond_b

    :cond_4
    :goto_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_3

    :cond_5
    invoke-static/range {v31 .. v31}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->clear()V

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterConfirmedCluster:Z

    if-eqz v6, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$100(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v13

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v6, v14}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPersonName(Landroid/content/ContentResolver;III)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameIDs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$100(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$100(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    :try_start_2
    sget-object v5, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "uri"

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "date"

    aput-object v13, v6, v12

    const-string/jumbo v7, "scene_type =? "

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "People"

    aput-object v13, v8, v12

    const/4 v9, 0x0

    const-string/jumbo v10, "FaceClustering"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    const/4 v6, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const-string/jumbo v6, "/"

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    invoke-static/range {v28 .. v28}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_a
    :try_start_3
    const-string/jumbo v12, "image_id"

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/face/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "people"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v49

    if-eqz v41, :cond_d

    if-eqz v22, :cond_d

    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move/from16 v0, v52

    invoke-direct {v12, v14, v15, v7, v0}, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;-><init>(JII)V

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v6, 0x1

    if-le v7, v6, :cond_1c

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v5, :cond_e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move/from16 v0, v52

    if-ne v7, v0, :cond_14

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$100(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v38 .. v39}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    if-eqz v56, :cond_13

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$200(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I

    move-result v6

    const v12, 0x7fffffff

    if-eq v6, v12, :cond_10

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$300(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$300(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$500(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I

    move-result v12

    invoke-static {v6, v12}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0xa

    aget-object v12, v59, v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v11, :cond_f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/4 v13, 0x1

    const/16 v6, 0xa

    aget-object v6, v59, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/16 v6, 0x8

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v59, v6

    invoke-static {v11}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v12, "/"

    move-object/from16 v0, v59

    invoke-static {v0, v12}, Lcom/sec/android/gallery3d/data/Path;->fromString([Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$502(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I

    const v6, 0x7fffffff

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$202(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$302(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    :cond_10
    :goto_5
    const/4 v6, 0x1

    if-le v7, v6, :cond_11

    move/from16 v0, v52

    if-eq v7, v0, :cond_4

    :cond_11
    const/4 v6, -0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v6

    invoke-static/range {v31 .. v31}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_12
    :try_start_4
    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    const v15, 0x7fffffff

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move/from16 v14, v33

    move-object/from16 v16, v49

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_13
    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    const v15, 0x7fffffff

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move/from16 v14, v33

    move-object/from16 v16, v49

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterConfirmedCluster:Z

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mFilterConfirmedRecommendCluster:Z

    if-eqz v6, :cond_10

    :cond_15
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v38 .. v39}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    if-eqz v56, :cond_1b

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$200(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I

    move-result v6

    move/from16 v0, v58

    if-ge v6, v0, :cond_17

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$300(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$500(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I

    move-result v12

    invoke-static {v6, v12}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    invoke-static/range {v37 .. v37}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$300(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v59

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v12, 0xa

    aget-object v12, v59, v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v11, :cond_16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/4 v13, 0x1

    const/16 v6, 0xa

    aget-object v6, v59, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const/16 v6, 0x8

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v59, v6

    invoke-static {v11}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v12, "/"

    move-object/from16 v0, v59

    invoke-static {v0, v12}, Lcom/sec/android/gallery3d/data/Path;->fromString([Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$502(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I

    move-object/from16 v0, v37

    move/from16 v1, v58

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$202(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I

    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->access$302(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_5

    :cond_17
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_18

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    invoke-virtual/range {v49 .. v49}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v59

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v11, :cond_19

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move v14, v8

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/16 v6, 0x8

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v59, v6

    invoke-static {v11}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v12, "/"

    move-object/from16 v0, v59

    invoke-static {v0, v12}, Lcom/sec/android/gallery3d/data/Path;->fromString([Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1a
    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move/from16 v14, v33

    move/from16 v15, v58

    move-object/from16 v16, v49

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_1b
    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move/from16 v14, v33

    move/from16 v15, v58

    move-object/from16 v16, v49

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterNamedCluster:Z

    if-nez v6, :cond_10

    const/4 v6, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v5, :cond_1d

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v12, v5

    move-object/from16 v13, p0

    move v14, v7

    move v15, v8

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_1d

    move-object/from16 v63, v5

    :cond_1d
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mIsCategory:Z

    if-eqz v6, :cond_23

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v47 .. v47}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v66

    :goto_6
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v24

    if-eqz v41, :cond_1f

    if-eqz v22, :cond_1f

    new-instance v12, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v6, -0x1

    invoke-direct {v12, v14, v15, v7, v6}, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;-><init>(JII)V

    move-object/from16 v0, v51

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    if-nez v5, :cond_20

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v12, v5

    move-object/from16 v13, p0

    move v14, v7

    move v15, v8

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V

    move-object/from16 v0, v64

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_21
    if-eqz v22, :cond_22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    :cond_22
    invoke-virtual/range {v47 .. v47}, Ljava/util/HashMap;->clear()V

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mOnlyFilterNamedCluster:Z

    if-nez v6, :cond_2a

    const/16 v35, 0x1

    const/16 v62, 0x0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    if-eqz v63, :cond_24

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v63

    if-ne v0, v6, :cond_24

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    goto :goto_7

    :cond_24
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_27

    const/4 v6, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v50

    const/16 v6, 0xa

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v50, v6

    const-string/jumbo v6, "/"

    move-object/from16 v0, v50

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/Path;->fromString([Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v45

    const/4 v6, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v41, :cond_25

    move-object/from16 v0, v51

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    if-nez v63, :cond_26

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$802(Lcom/sec/android/gallery3d/data/FaceClustering$Value;I)I

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    goto/16 :goto_7

    :cond_26
    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_27
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v13

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v13, v6, v1}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPersonName(Landroid/content/ContentResolver;III)Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    if-lez v6, :cond_28

    add-int/lit8 v35, v35, 0x1

    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameIDs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$Value;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_29
    if-eqz v63, :cond_2a

    if-eqz v62, :cond_2a

    move-object/from16 v42, v62

    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;

    move-result-object v60

    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v6

    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v6, v12, v1}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPersonName(Landroid/content/ContentResolver;III)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameIDs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mNameId:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mPersonIds:Ljava/util/ArrayList;

    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mGroupIds:Ljava/util/ArrayList;

    invoke-static/range {v63 .. v63}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    if-eqz v41, :cond_2c

    const-string/jumbo v6, "FaceClustering"

    const-string/jumbo v12, "FaceClustering sort start!!"

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/util/ArcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v34, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    move-object/from16 v1, v51

    invoke-direct {v0, v6, v1}, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_8

    :cond_2b
    const-string/jumbo v6, "FaceClustering"

    const-string/jumbo v12, "FaceClustering sort end!!"

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/util/ArcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    if-eqz v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    :cond_2d
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/FaceClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v6, "FaceClustering"

    const-string/jumbo v12, "FaceClustering end!!"

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/util/ArcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
