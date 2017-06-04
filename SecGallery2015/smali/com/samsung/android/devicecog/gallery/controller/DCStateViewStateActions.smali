.class public Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;
.super Ljava/lang/Object;
.source "DCStateViewStateActions.java"


# static fields
.field private static final STATE_ID_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturesView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumsListView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryListView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MtpView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SearchEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SearchSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PictureEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PictureSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryListEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryListSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryDetailEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryDetailSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SearchViewResult"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DetailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Members"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MembersEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MembersSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddItemsEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddItemsSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CreateStoryEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CreateStorySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AutoAdjustOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AutoAdjustOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossPhotoEditorPhotoEditor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CreateStory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Add"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryListView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryDetailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ShareViaMessage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Rotate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "EditInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RemoveLocationSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MapSearchView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MapSearchResultViewSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AutoCreateStoriesOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AutoCreateStoriesOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RecycleBin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RecycleBinEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RecycleBinSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SuggestImagesOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SuggestImagesOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StorySharing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CloudSyncOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CloudSyncOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossSamsungCloudCloudSyncScreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossVideoPlayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "FavoriteOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "FavoriteOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RenamePopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CreateStoryPopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RemoveCategorySave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RenameEditInfoSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StorySharingOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StorySharingOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeletePopUpForDetailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossShareForDetailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossShare"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ShareChooserPopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "WallpaperCropper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SetAOD"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossStoryVideoEditorPlayStoryVideo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SharingPictures"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ViewingPictures"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ViewingAlbums"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeletingPictures"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossContactSinglePickFromInvite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListPicker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsPickerSingle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsPickerMulti"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturePickerSingle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturePickerMulti"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturesSelectSingleItem"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturesSelectMultipleItems"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsSelectSingleItem"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsSelectMultipleItems"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PicturesChooseDone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumChooseDone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DateLocationOn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DateLocationOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListEmptySelectedViewForHideAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedViewForHideAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedViewForShowHiddenAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "LeaveGroupPopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeleteGroupPopUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossPhotoEditorAnimationEditor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossPhotoEditorCollageEditor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "360PhotoViewer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossVideoEditorVideoEditorView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossPhotoEditorPhoto360Editor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossVideoEditorVideo360EditorView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "BurstShotViewer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "GoToUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RemoveUrlSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SplitState"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CrossVisionIntelligenceVisionIntelligenceDetected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "TagSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddToHomeScreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CloudEmptySelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CloudSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Sortby"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MapView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Accept"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Decline"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeleteNotification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumFold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AlbumUnfold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Create"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "EmptyBin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Delete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Leave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Rename"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SortOrder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SplitState"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryViewMode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "RemoveTagsSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddTagForMoreInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "AddStoryMember"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "MoveToSecureFolder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Resume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SuggestedWordsHistoryView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ClearSearchHistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "FilterBy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "FilterStory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DeleteKeyword"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Like"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "Unlike"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ScrollUp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ScrollDown"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ScrollToTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ScrollToEnd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ZoomIn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "ZoomOut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SwipeLeft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SwipeRight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "StoryComments"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CardFold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "CardUnfold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "DOWNLOAD_SHARED_STORY_CONTENTS_IN_DETAIL_VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "SearchResultPeople"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    const-string/jumbo v1, "PeopleName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getStateIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->STATE_ID_SET:Ljava/util/Set;

    return-object v0
.end method
