.class public Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;
.super Ljava/lang/Object;
.source "DCOptionMenuNlgIdMap.java"


# static fields
.field private static final sFailedNlgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSucceedNlgMap:Ljava/util/HashMap;
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
    .locals 5

    const v4, 0x7f0a07b7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a0560

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SlideShow"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a0566

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "CrossContactSinglePickFromSetAsContact"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "StoryDetailSelectedView"

    const v2, 0x7f0a07a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "RemoveFromStory"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a079e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "RemoveFromStoryForDetailView"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a056a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PictureSelectedView"

    const v2, 0x7f0a06b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    const v2, 0x7f0a0750

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AlbumListSelectedView"

    const v2, 0x7f0a0761

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "MoveToKNOX"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "PicturesView"

    const v2, 0x7f0a051e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SearchView"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a0575

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "Print"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "PicturesView"

    const v2, 0x7f0a080f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "ContactUs"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "PictureSelectedView"

    const v2, 0x7f0a070d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_PICTURES"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    const v2, 0x7f0a077c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_ALBUM_THUMBNAILS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "StoryDetailSelectedView"

    const v2, 0x7f0a07b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_SHARED_STORY_CONTENTS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "CloudSelectedView"

    const v2, 0x7f0a0818

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_CLOUD_VIEW"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a05b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_DETAIL_VIEW"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "SearchSelectedView"

    const v2, 0x7f0a059d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PictureSelectedView"

    const v2, 0x7f0a06e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    const v2, 0x7f0a0771

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "AddTag"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "Details"

    const v3, 0x7f0a054b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "CrossSendToReminder"

    const v3, 0x7f0a07c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "Download"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_SHARED_STORY_CONTENTS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_PICTURES"

    const v3, 0x7f0a070e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_ALBUM_THUMBNAILS"

    const v3, 0x7f0a077d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_DETAIL_VIEW"

    const v3, 0x7f0a05b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DOWNLOAD_CLOUD_CONTENT_IN_CLOUD_VIEW"

    const v3, 0x7f0a0819

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "Print"

    const v3, 0x7f0a0576

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "Settings"

    const v3, 0x7f0a07e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SlideShow"

    const v3, 0x7f0a055f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DeleteGroupPopUp"

    const v3, 0x7f0a07be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "LeaveGroupPopUp"

    const v3, 0x7f0a07bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "RemoveFromStory"

    const v3, 0x7f0a07a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "RemoveFromStoryForDetailView"

    const v3, 0x7f0a0843

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SaveImage"

    const v3, 0x7f0a0580

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "DeletePopupForBurstViewer"

    const v3, 0x7f0a0582

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "ContactUs"

    const v3, 0x7f0a0810

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNlgId(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->getNlgIdForSucceed(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->getNlgIdForFailed(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgIdForFailed(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v1, 0x7f0a0515

    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "DCOptionMenuNlgIdMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BixbyGallery, getNlgId() requestStateId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getNlgIdForSucceed(Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DCOptionMenuNlgIdMap"

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

    :cond_0
    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCOptionMenuNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
