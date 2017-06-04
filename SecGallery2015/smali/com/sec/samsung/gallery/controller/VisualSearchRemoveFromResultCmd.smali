.class public Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "VisualSearchRemoveFromResultCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;,
        Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;
    }
.end annotation


# static fields
.field private static final CH_TAG_DEFAULT_VALUE:Ljava/lang/String; = "tag_value"

.field private static final FEATURE_USE_UNION_CMH:Z

.field private static final MEDIA_PROVIDER_URI:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VSRemoveFromResultCmd"

.field private static mTask:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->FEATURE_USE_UNION_CMH:Z

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->MEDIA_PROVIDER_URI:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->mTask:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->mTask:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->FEATURE_USE_UNION_CMH:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->MEDIA_PROVIDER_URI:Ljava/lang/String;

    return-object v0
.end method

.method private getCategoryNameForBixby(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTagFromCH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTagFromCH()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "Documents"

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "tag_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getRemoveFromForBixby(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTagFromCH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tag_value"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTagFromCH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->USER:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 11

    const/4 v2, 0x4

    const/4 v10, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    aget-object v1, v8, v10

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v0, 0x1

    aget-object v6, v8, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v9, v8, v0

    check-cast v9, Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v4, v8, v0

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v0, v8

    if-le v0, v2, :cond_0

    aget-object v7, v8, v2

    check-cast v7, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    :cond_0
    if-eqz v7, :cond_2

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->getCategoryNameForBixby(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->getRemoveFromForBixby(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    move-result-object v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const-string/jumbo v0, "VSRemoveFromResultCmd"

    const-string/jumbo v2, "Unable to remove selected items from result. category is null or empty."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "People"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, v9

    sget-object v5, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->PEOPLE:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Other Documents"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "Documents"

    sget-object v5, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "My tags"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v3, v9

    sget-object v5, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->USER:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    goto :goto_0

    :cond_5
    move-object v3, v9

    sget-object v5, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;->OTHERS:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFrom;)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->mTask:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->mTask:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    new-array v2, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
