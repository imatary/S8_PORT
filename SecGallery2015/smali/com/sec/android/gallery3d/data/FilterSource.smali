.class public Lcom/sec/android/gallery3d/data/FilterSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_CAMERA_SHORTCUT:I = 0x3

.field private static final FILTER_BY_CAMERA_SHORTCUT_ITEM:I = 0x4

.field private static final FILTER_BY_EMPTY:I = 0x1

.field private static final FILTER_BY_EMPTY_ITEM:I = 0x2

.field private static final FILTER_BY_FOLDER:I = 0x64

.field private static final FILTER_BY_MEDIATYPE:I = 0x0

.field public static final FILTER_CAMERA_SHORTCUT:Ljava/lang/String; = "/filter/camera_shortcut"

.field private static final FILTER_CAMERA_SHORTCUT_ITEM:Ljava/lang/String; = "/filter/camera_shortcut_item"

.field private static final FILTER_EMPTY_ITEM:Ljava/lang/String; = "/filter/empty_prompt"

.field public static final PATH_PREFIX:Ljava/lang/String; = "filter"

.field private static final TAG:Ljava/lang/String; = "FilterSource"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mCameraShortcutItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mEmptyItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "filter"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/empty/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/empty_prompt"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/camera_shortcut"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/camera_shortcut_item"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/filter/folder/*/*"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/EmptyAlbumImage;

    const-string/jumbo v1, "/filter/empty_prompt"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/EmptyAlbumImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    const-string/jumbo v1, "/filter/camera_shortcut_item"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/CameraShortcutImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object p1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    sparse-switch v13, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    const/4 v6, 0x0

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v1, v16, v1

    const-string/jumbo v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v6, v16, v1

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    const/4 v2, 0x0

    aget-object v4, v14, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/data/FilterTypeSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;ILjava/lang/String;)V

    :goto_0
    return-object v1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    new-instance v1, Lcom/sec/android/gallery3d/data/FilterEmptyPromptSet;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/android/gallery3d/data/FilterEmptyPromptSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/sec/android/gallery3d/data/SingleItemAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/sec/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    const/4 v12, 0x0

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object v12, v16, v1

    :cond_1
    new-instance v7, Lcom/sec/android/gallery3d/data/FilterFolderSet;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/FilterSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v1, 0x0

    aget-object v11, v14, v1

    move-object/from16 v8, p1

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/gallery3d/data/FilterFolderSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
