.class public interface abstract Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICalendarEventColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICategoryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICommonColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayAndMonthColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IEventContactColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFilesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IKeyFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ILocationColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMomentColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMonthClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPOIColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPersonsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISceneColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoriesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoryTagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISummaryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ITagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IUserTagsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IWeatherColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ImageColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$TagFlags;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$VideoColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.cmh"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BESTPHOTO_NAME:Ljava/lang/String; = "bestphoto"

.field public static final BEST_PHOTO_URI:Landroid/net/Uri;

.field public static final CALENDAR_EVENT_TABLE_NAME:Ljava/lang/String; = "calendarevent"

.field public static final CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

.field public static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "category"

.field public static final CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final CLUSTER_TABLE_NAME:Ljava/lang/String; = "cluster"

.field public static final CLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAYCLUSTER_TABLE_NAME:Ljava/lang/String; = "daycluster"

.field public static final DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAY_MONTH_TABLE_NAME:Ljava/lang/String; = "dayMonth"

.field public static final DAY_MONTH_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_IMAGES_TABLE_NAME:Ljava/lang/String; = "detailed_imagesview"

.field public static final DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_VIDEOS_TABLE_NAME:Ljava/lang/String; = "detailed_videosview"

.field public static final DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_CONTACT_TABLE_NAME:Ljava/lang/String; = "event_contact"

.field public static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_TABLE_NAME:Ljava/lang/String; = "faces"

.field public static final FACES_TABLE_URI:Landroid/net/Uri;

.field public static final FETCH_CLOUD_THUMBNAILS:Ljava/lang/String; = "fetchCloudThumbnail"

.field public static final FILES_TABLE_NAME:Ljava/lang/String; = "files"

.field public static final FILES_TABLE_URI:Landroid/net/Uri;

.field public static final GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final HAVING:Ljava/lang/String; = "having"

.field public static final HIDE_ALBUM:Ljava/lang/String; = "hideAlbum"

.field public static final IMAGES_TABLE_NAME:Ljava/lang/String; = "images"

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final KEY_FACES_TABLE_NAME:Ljava/lang/String; = "key_faces"

.field public static final KEY_FACES_TABLE_URI:Landroid/net/Uri;

.field public static final LIMIT:Ljava/lang/String; = "limit"

.field public static final LOCATION_TABLE_NAME:Ljava/lang/String; = "location"

.field public static final LOCATION_TABLE_URI:Landroid/net/Uri;

.field public static final MOMENT_TABLE_NAME:Ljava/lang/String; = "moment"

.field public static final MOMENT_TABLE_URI:Landroid/net/Uri;

.field public static final MONTHCLUSTER_TABLE_NAME:Ljava/lang/String; = "monthcluster"

.field public static final MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final NOTIFY_CLOUD_THUMBNAILS:Ljava/lang/String; = "notifyCloudThumbnail"

.field public static final NOTIFY_OPERATION_TAGUPDATE:Ljava/lang/String; = "TAG_UPDATE"

.field public static final PERSONS_TABLE_NAME:Ljava/lang/String; = "persons"

.field public static final PERSONS_TABLE_URI:Landroid/net/Uri;

.field public static final POI_TABLE_NAME:Ljava/lang/String; = "poi"

.field public static final POI_TABLE_URI:Landroid/net/Uri;

.field public static final RAWQUERY:Ljava/lang/String; = "rawquery"

.field public static final SCENE_TABLE_NAME:Ljava/lang/String; = "scene"

.field public static final SCENE_TABLE_URI:Landroid/net/Uri;

.field public static final SHOT_TABLE_NAME:Ljava/lang/String; = "shotmode"

.field public static final SHOT_TABLE_URI:Landroid/net/Uri;

.field public static final SHOW_ALBUM:Ljava/lang/String; = "showAlbum"

.field public static final SMARTCROPVIEW_TABLE_NAME:Ljava/lang/String; = "smartcropview"

.field public static final SMARTCROP_VIEW_URI:Landroid/net/Uri;

.field public static final STORY_TABLE_NAME:Ljava/lang/String; = "story"

.field public static final STORY_TABLE_URI:Landroid/net/Uri;

.field public static final STORY_TAG_VIEW_TABLE_NAME:Ljava/lang/String; = "story_tag_view"

.field public static final STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

.field public static final SUMMARY_TABLE_NAME:Ljava/lang/String; = "summary"

.field public static final SUMMARY_TABLE_URI:Landroid/net/Uri;

.field public static final TABLEONE_TABLE_NAME:Ljava/lang/String; = "table1"

.field public static final TABLEONE_VIEW_URI:Landroid/net/Uri;

.field public static final TAGVIEW_TABLE_NAME:Ljava/lang/String; = "tagview"

.field public static final TAG_VIEW_URI:Landroid/net/Uri;

.field public static final TIMELINEVIEW_TABLE_NAME:Ljava/lang/String; = "timelineview"

.field public static final TIMELINE_VIEW_URI:Landroid/net/Uri;

.field public static final USERTAG_TABLE_NAME:Ljava/lang/String; = "usertag"

.field public static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEO_TABLE_NAME:Ljava/lang/String; = "video"

.field public static final WEATHER_TABLE_NAME:Ljava/lang/String; = "weather"

.field public static final WEATHER_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "calendarevent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "scene"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "shotmode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SHOT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->WEATHER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "poi"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->POI_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "detailed_imagesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "detailed_videosview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "external/faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "internal/persons"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "moment"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MOMENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "story"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SUMMARY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "monthcluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "event_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "story_tag_view"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "cluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "dayMonth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAY_MONTH_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "daycluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "timelineview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TIMELINE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "tagview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "internal/key_faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->KEY_FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "video"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "smartcropview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "table1"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TABLEONE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "bestphoto"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->BEST_PHOTO_URI:Landroid/net/Uri;

    return-void
.end method
