.class public Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;
.super Ljava/lang/Object;
.source "DCSplitStateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;,
        Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static GROUP_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;",
            ">;"
        }
    .end annotation
.end field

.field private static SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;",
            "Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const-wide/32 v8, 0x8000000

    const/4 v6, 0x4

    const/4 v5, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->FEATURE_USE_DEVICE_COG:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossPhotoEditorPhotoEditor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossPhotoEditorPhoto360Editor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossPhotoEditorAnimationEditor"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossVideoEditorVideoEditorView"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossVideoEditorVideo360EditorView"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "BurstShotViewer"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->VIEWER:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "360PhotoViewer"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->VIEWER:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "CrossVideoPlayer"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->VIEWER:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;

    invoke-direct {v0, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$1;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "CrossPhotoEditorPhotoEditor"

    invoke-virtual {v0, v5, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "CrossPhotoEditorPhoto360Editor"

    invoke-virtual {v0, v5, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "CrossVideoEditorVideoEditorView"

    invoke-virtual {v0, v6, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "CrossVideoEditorVideo360EditorView"

    invoke-virtual {v0, v6, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->EDITOR:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;

    invoke-direct {v1, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$1;)V

    const-wide/16 v2, 0x200

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "BurstShotViewer"

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "360PhotoViewer"

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "CrossVideoPlayer"

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "360PhotoViewer"

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->putState(ILjava/lang/Long;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;->VIEWER:Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static findNextState(Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;IJ)Ljava/lang/String;
    .locals 6

    sget-boolean v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "DCSplitStateChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BixbyGallery, getNestState() type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mediaType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mediaItemAttr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->SPLIT_STATE_GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$SplitStateGroup;->getNextState(ILjava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMediaItemAttr(Lcom/sec/android/gallery3d/data/MediaItem;)J
    .locals 7

    const-wide/32 v0, 0x8000000

    const-wide/16 v4, 0x200

    const-wide/16 v2, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v0, v4

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getNextState(Ljava/util/List;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->GROUP_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->getMediaItemAttr(Lcom/sec/android/gallery3d/data/MediaItem;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->findNextState(Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker$GroupType;IJ)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    const-string/jumbo v3, "DCSplitStateChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BixbyGallery : getNextState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
