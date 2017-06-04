.class public Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;
.super Ljava/lang/Object;
.source "DCNoItemViewNlgIdMap.java"


# static fields
.field private static final sNlgIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturesView"

    const v2, 0x7f0a05c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerSingle"

    const v2, 0x7f0a05c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerMulti"

    const v2, 0x7f0a05c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    const v2, 0x7f0a0743

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumListPicker"

    const v2, 0x7f0a05c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    const v2, 0x7f0a0784

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "RecycleBin"

    const v2, 0x7f0a07f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CloudView"

    const v2, 0x7f0a0817

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getNlgId(Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DCNoItemViewNlgIdMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BixbyGallery, getNlgId() requestStateId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCNoItemViewNlgIdMap;->sNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
