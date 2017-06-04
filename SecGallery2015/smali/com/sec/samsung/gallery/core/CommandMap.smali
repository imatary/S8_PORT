.class Lcom/sec/samsung/gallery/core/CommandMap;
.super Ljava/util/HashMap;
.source "CommandMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lorg/puremvc/java/multicore/interfaces/ICommand;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "DESTROY"

    const-class v1, Lcom/sec/samsung/gallery/controller/DestroyCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_GALLERY_VIEW"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "POST_GALLERY"

    const-class v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_CAMERA"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartCameraCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PRINT_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/PrintImageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CROP_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/CropImageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "VIDEO_PLAY"

    const-class v1, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IMAGE_EDIT"

    const-class v1, Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FLASH_ANNOTATE"

    const-class v1, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RENAME_ALBUM_OR_FILE"

    const-class v1, Lcom/sec/samsung/gallery/controller/RenameAlbumOrFile;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ANDROID_BEAM"

    const-class v1, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_SLIDESHOW"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartSlideShowCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_STORY_ALBUM_APP"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CPU_BOOST"

    const-class v1, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_COLLAGE_APP"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartCollageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_DELETE_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SHARE_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShareViaCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHARE_URL_TO_IMAGE_OR_TEXT_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_USAGE_ALERT_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SET_AS_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SET_AS_ACTIVITY"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_NEW_ALBUM_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_STORAGE_CHOICE_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowStorageChoiceDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_RENAME_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_COPY_MOVE_ALBUM_LIST_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_NEW_ALBUM_COPY_MOVE_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_NEW_ALBUM_CANCEL_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_IMPORT_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_IMAGE_VIDEO_CONVERSION_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_IMAGE_VIDEO_SHARE_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowImageVideoShareDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_DISCLAIMER_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_FACE_TAG"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_MMS_SAVE"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CONVERT_MULTI_FORMAT_TO_MP4"

    const-class v1, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "MOVE_TO_SECRETBOX"

    const-class v1, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SECRET_MODE_RECEIVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/SecretModeReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "MOVE_TO_KNOX"

    const-class v1, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "COPY_TO_EVENT"

    const-class v1, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_CATEGORY_TAG"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_3DTOUR"

    const-class v1, Lcom/sec/samsung/gallery/controller/Play3DTourCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "MAGIC_SHOT_STUDIO"

    const-class v1, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "MEDIASCANNER_RECEIVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/MediaScannerReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_SEQUENCE_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_INTERACTIVESHOT_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlayInteractiveShotCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_MOTION_PANAROMA"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlayMotionPanaromaCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_SELF_MOTION_PANAROMA"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlaySelfMotionPanaromaCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_MOTION_PHOTO"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlayMotionPhotoCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_VIDEO_PLAY"

    const-class v1, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "COPY_BURSTSHOT_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ON_GL_IDLE_TIMER"

    const-class v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PLAY_MOTION_VIDEO"

    const-class v1, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CPU_BOOST_SCROLL"

    const-class v1, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_ALBUM_CHOICE_ACTIVITY"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_ALBUM_OPERATIONS"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "BROADCAST_RECEIVERS"

    const-class v1, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SYNC_CONTACTS"

    const-class v1, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CREATE_TAG_IMAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "REGISTER_SETTINGS_OBSERVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/RegisterSettingsObserverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SHARE_TAG_SHOT_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowShareTagShotDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PACKAGES_BROADCAST_RECEIVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/PackagesBroadcastReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_PERMISSION_REQUEST_ACTIVITY"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowPermissionRequestDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_GIF_MAKER"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_AGIF_EDITOR"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_CHANGE_PLAYER_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowChangePlayerDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SLOWFASTMOTION_EXPORT_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowSlowFastMotionExportDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_NETWORK_WARNING_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowNetworkWarningDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SMART_VIEW_RECEIVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/SmartViewReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SEND_TO_REMINDER"

    const-class v1, Lcom/sec/samsung/gallery/controller/SendToReminderCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EVENT_ADD_TAG"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HANDLE_IMAGE_ROTATION"

    const-class v1, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_ACTION_PRINT"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartActionPrintCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_MULTI_CONTACT_PICK"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartMultiContactPickCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EventSendStartCmd"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventSendStartCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EventAddMemberCmd"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventAddMembersCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EventAddContentCmd"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventAddContentCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHANNEL_DOWNLOAD"

    const-class v1, Lcom/sec/samsung/gallery/controller/ChannelDownloadCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EVENT_GET_POLICY"

    const-class v1, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_CHANNEL_VIEW_MODE"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_SHARE_ITEM_DOWNLOAD_CMD"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EXECUTE_OPTION_MENU"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "EXECUTE_DC_HANDLER"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DC_START_ACTIVITY_CMD"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/StartActivityCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DC_SHARE_VIA_MESSAGE"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/ShareViaMessageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SEND_DC_RESPONSE"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SET_CURRENT_DC_STATE"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IMAGE_VIEWER_START"

    const-class v1, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PICKER_START"

    const-class v1, Lcom/sec/samsung/gallery/controller/PickerStartCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PICKER_ITEM_SELECTED"

    const-class v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    const-class v1, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HIDE_ALBUMS"

    const-class v1, Lcom/sec/samsung/gallery/controller/HideAlbums;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SCLOUD_RECYCLEBIN_FILE_PROCESSING"

    const-class v1, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SCLOUD_TEMP_DOWNLOAD"

    const-class v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SCLOUD_MULTI_DOWNLOAD"

    const-class v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SCLOUD_VIDEO_DOWNLOAD"

    const-class v1, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SCLOUD_CHECK_UPSM"

    const-class v1, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_EVENT_CHOICE_ACTIVITY"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_CONTACT_US"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartContactUsCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_TO_SHOW_SECURE_FOLDER_TOP_CARD"

    const-class v1, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_TO_SHOW_CLOUD_TIP_CARD"

    const-class v1, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_TO_SHOW_SECURE_FOLDER_TIP_CARD"

    const-class v1, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_TO_SHOW_PICTURE_FRAME_TIP_CARD"

    const-class v1, Lcom/sec/samsung/gallery/controller/CheckToShowPictureFrameTipCardCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "CHECK_TO_SHOW_VIDEO_APP_TIP_CARD"

    const-class v1, Lcom/sec/samsung/gallery/controller/CheckToShowVideoAppTipCardCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_KNOX_SET_UP"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartKnoxSetUpCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_CLOUD_SETTING"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartCloudSettingCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_VISUAL_SEARCH_FACE_TAG"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartVisualSearchFaceTagCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "VISUAL_SEARCH_FACE_TAGGING"

    const-class v1, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SEARCH_INFO_SAVE_RESTORE"

    const-class v1, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "VISUAL_SEARCH_REMOVE_FROM_RESULT"

    const-class v1, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "VISUAL_SEARCH_DELETE_NAME"

    const-class v1, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_VISION_INTELLIGENCE"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "UPDATE_SOCIAL_INFO"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "UPDATE_GROUP_INFO"

    const-class v1, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DC_CREATE_STORY"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/StartCreateStoryDCCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DISPLAY_LISTENER_MANAGE"

    const-class v1, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IMAGE_360_VIEWER"

    const-class v1, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHOW_FILTER_BY_DIALOG"

    const-class v1, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RENAME_DC_OPERATION"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/RenameDCOperation;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LOWSTORAGE_MODE_RECEIVER"

    const-class v1, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "START_HLVIDEO"

    const-class v1, Lcom/sec/samsung/gallery/controller/StartHLVideoCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SAVE_ALBUM_ID"

    const-class v1, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DC_HANDLE_TOUCH_EVENT"

    const-class v1, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/CommandMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
