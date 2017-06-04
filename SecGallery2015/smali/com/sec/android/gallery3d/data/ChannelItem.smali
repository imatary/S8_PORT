.class public Lcom/sec/android/gallery3d/data/ChannelItem;
.super Ljava/lang/Object;
.source "ChannelItem.java"


# static fields
.field private static final INDEX_CHANNEL_CLOUD_ID:I = 0x17

.field private static final INDEX_CHANNEL_CONTENT_NEW:I = 0x13

.field public static final INDEX_CHANNEL_COVER_URI:I = 0x16

.field private static final INDEX_CHANNEL_CREATION_TIME:I = 0x2

.field private static final INDEX_CHANNEL_DEVICE_ID:I = 0x8

.field public static final INDEX_CHANNEL_EXPIRATION_TIME:I = 0x12

.field private static final INDEX_CHANNEL_FILE_DATE_TAKEN:I = 0x5

.field private static final INDEX_CHANNEL_FILE_ID:I = 0x1

.field private static final INDEX_CHANNEL_FILE_MIMETYPE:I = 0x6

.field private static final INDEX_CHANNEL_FILE_ORIGINAL_FILE_ID:I = 0xc

.field private static final INDEX_CHANNEL_FILE_ORIGINAL_FILE_PATH:I = 0x11

.field private static final INDEX_CHANNEL_FILE_ORIGINAL_SIZE:I = 0xb

.field private static final INDEX_CHANNEL_HEIGHT:I = 0x19

.field private static final INDEX_CHANNEL_IS_CLOUD:I = 0x18

.field private static final INDEX_CHANNEL_LATITUDE:I = 0x14

.field private static final INDEX_CHANNEL_LONGITUDE:I = 0x15

.field private static final INDEX_CHANNEL_MEDIA_ID:I = 0x7

.field private static final INDEX_CHANNEL_ORIENTATION:I = 0x1c

.field public static final INDEX_CHANNEL_OWNER_ID:I = 0xf

.field private static final INDEX_CHANNEL_PRIVATE_DATA:I = 0x1b

.field private static final INDEX_CHANNEL_RESOLUTION:I = 0xa

.field public static final INDEX_CHANNEL_SHARED_ID:I = 0xd

.field private static final INDEX_CHANNEL_THUMBNAIL_PATH:I = 0x4

.field public static final INDEX_CHANNEL_TYPE:I = 0x10

.field public static final INDEX_CHANNEL_UGCI_ID:I = 0xe

.field private static final INDEX_CHANNEL_WIDTH:I = 0x1a

.field private static final INDEX_STORY_COMMENT_COUNT:I

.field private static final INDEX_STORY_COVER_RECT_RATIO:I

.field private static final INDEX_STORY_HOST_LIKED:I

.field private static final INDEX_STORY_HOST_LIKED_COMMIT_STATUS:I

.field public static final INDEX_STORY_IS_VISIBLE:I = 0x1e

.field private static final INDEX_STORY_ITEM_ARTICLE_ID:I

.field private static final INDEX_STORY_ITEM_OWNER_NAME:I

.field private static final INDEX_STORY_ITEM_OWNER_NUMBER:I

.field private static final INDEX_STORY_LATEST_COMMENT_TEXT:I

.field private static final INDEX_STORY_LATEST_COMMENT_TIME:I

.field private static final INDEX_STORY_LATEST_COMMENT_USER:I

.field private static final INDEX_STORY_LIKE_COUNT:I

.field public static final INDEX_STORY_NOTIFY_STATUS:I = 0x1d

.field private static final INDEX_STORY_SOCIAL_TYPE:I

.field static final PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

.field private static final RECTF_COUNT:I = 0x4

.field static final SCLOUD_PROJECTION:[Ljava/lang/String;

.field static final SCLOUD_PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

.field private static final USE_SCLOUD:Z

.field private static final USE_UNION_CMH:Z


# instance fields
.field private deviceId:I

.field private mDateInMs:Ljava/lang/Long;

.field private mFaceGroupId:I

.field private mFileId:I

.field private mHeight:I

.field private mIsNewContent:Z

.field private mIsScloudItem:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mMediaId:I

.field private mMimeType:Ljava/lang/String;

.field private mOriFilePath:Ljava/lang/String;

.field private mOrientation:I

.field private mOriginalFileId:I

.field private mOriginalFileSize:I

.field private mOwner:I

.field private mPath:Lcom/sec/android/gallery3d/data/Path;

.field private mSCloudId:I

.field private mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

.field private mThmFilePath:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1f

    const/16 v3, 0x17

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelItem;->USE_SCLOUD:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ChannelItem;->USE_UNION_CMH:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fileid"

    aput-object v1, v0, v6

    const-string/jumbo v1, "creation_time"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cloudCachePath"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "original_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "original_fileid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "is_shared"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "owner"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "original_filepath"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "new_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelItem;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fileid"

    aput-object v1, v0, v6

    const-string/jumbo v1, "creation_time"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cloudCachePath"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "original_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "original_fileid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "is_shared"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "owner"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "original_filepath"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "new_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    const-string/jumbo v1, "coverRectRatio"

    aput-object v1, v0, v3

    const/16 v1, 0x18

    const-string/jumbo v2, "likesCount"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "commentsCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "latestCommentText"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "latestCommentUser"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "latestCommentTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "article_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "item_owner_name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "item_owner_number"

    aput-object v1, v0, v4

    const/16 v1, 0x20

    const-string/jumbo v2, "hostLiked"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "social_type"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "hostLikedCommitStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelItem;->PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fileid"

    aput-object v1, v0, v6

    const-string/jumbo v1, "creation_time"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cloudCachePath"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "original_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "original_fileid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "is_shared"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "owner"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "original_filepath"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "new_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v3

    const/16 v1, 0x18

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "private_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "notify_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "is_visible"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelItem;->SCLOUD_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "story_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "fileid"

    aput-object v1, v0, v6

    const-string/jumbo v1, "creation_time"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cloudCachePath"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "original_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "original_fileid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "is_shared"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "owner"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "original_filepath"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "expiration_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "new_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cover"

    aput-object v2, v0, v1

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v3

    const/16 v1, 0x18

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "private_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "notify_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "is_visible"

    aput-object v2, v0, v1

    const-string/jumbo v1, "coverRectRatio"

    aput-object v1, v0, v4

    const/16 v1, 0x20

    const-string/jumbo v2, "likesCount"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "commentsCount"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "latestCommentText"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "latestCommentUser"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "latestCommentTime"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "article_id"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "item_owner_name"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "item_owner_number"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "hostLiked"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "social_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "hostLikedCommitStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelItem;->SCLOUD_PROJECTION_WITH_SOCIAL:[Ljava/lang/String;

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ChannelItem;->USE_UNION_CMH:Z

    if-nez v0, :cond_0

    sput v3, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COVER_RECT_RATIO:I

    const/16 v0, 0x18

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LIKE_COUNT:I

    const/16 v0, 0x19

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COMMENT_COUNT:I

    const/16 v0, 0x1a

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_TEXT:I

    const/16 v0, 0x1b

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_USER:I

    const/16 v0, 0x1c

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_TIME:I

    const/16 v0, 0x1d

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_ARTICLE_ID:I

    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NAME:I

    sput v4, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NUMBER:I

    const/16 v0, 0x20

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED:I

    const/16 v0, 0x21

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_SOCIAL_TYPE:I

    const/16 v0, 0x22

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED_COMMIT_STATUS:I

    :goto_0
    return-void

    :cond_0
    sput v4, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COVER_RECT_RATIO:I

    const/16 v0, 0x20

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LIKE_COUNT:I

    const/16 v0, 0x21

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COMMENT_COUNT:I

    const/16 v0, 0x22

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_TEXT:I

    const/16 v0, 0x23

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_USER:I

    const/16 v0, 0x24

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_TIME:I

    const/16 v0, 0x25

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_ARTICLE_ID:I

    const/16 v0, 0x26

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NAME:I

    const/16 v0, 0x27

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NUMBER:I

    const/16 v0, 0x28

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED:I

    const/16 v0, 0x29

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_SOCIAL_TYPE:I

    const/16 v0, 0x2a

    sput v0, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED_COMMIT_STATUS:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFileId:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileId:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileSize:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mMediaId:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSCloudId:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsNewContent:Z

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLatitude:D

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLongitude:D

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOwner:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsScloudItem:Z

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFaceGroupId:I

    return-void
.end method

.method private setDate(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mDateInMs:Ljava/lang/Long;

    return-void
.end method

.method private setDeviceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->deviceId:I

    return-void
.end method

.method private setFileId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFileId:I

    return-void
.end method

.method private setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mHeight:I

    return-void
.end method

.method private setMediaId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mMediaId:I

    return-void
.end method

.method private setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method private setOriFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriFilePath:Ljava/lang/String;

    return-void
.end method

.method private setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOrientation:I

    return-void
.end method

.method private setOriginalFileId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileId:I

    return-void
.end method

.method private setOriginalFileSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileSize:I

    return-void
.end method

.method private setOwnerId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOwner:I

    return-void
.end method

.method private setResolution(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mWidth:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mHeight:I

    goto :goto_0
.end method

.method private setSuggestion(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsNewContent:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setThmFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mThmFilePath:Ljava/lang/String;

    return-void
.end method

.method private setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mWidth:I

    return-void
.end method


# virtual methods
.method public checkSCloud()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsScloudItem:Z

    return v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mDateInMs:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->deviceId:I

    return v0
.end method

.method public getFaceGroupId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFaceGroupId:I

    return v0
.end method

.method public getFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFileId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mHeight:I

    return v0
.end method

.method public getIsSuggestion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsNewContent:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLatitude:D

    return-wide v0
.end method

.method public getLocalPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLongitude:D

    return-wide v0
.end method

.method public getMediaId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mMediaId:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOrientation:I

    return v0
.end method

.method public getOriginalFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileId:I

    return v0
.end method

.method public getOriginalFileSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOriginalFileSize:I

    return v0
.end method

.method public getOwnerId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mOwner:I

    return v0
.end method

.method public getSCloudId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSCloudId:I

    return v0
.end method

.method public getSocialInfo()Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    return-object v0
.end method

.method public getThmFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mThmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mWidth:I

    return v0
.end method

.method public setLocalPath(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "original file path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getOriFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setFileId(I)V

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setDate(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ChannelItem;->getDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setDate(Ljava/lang/Long;)V

    :cond_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setThmFilePath(Ljava/lang/String;)V

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setMimeType(Ljava/lang/String;)V

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setMediaId(I)V

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setDeviceId(I)V

    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setOwnerId(I)V

    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setOriginalFileId(I)V

    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setOriginalFileSize(I)V

    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setResolution(Ljava/lang/String;)V

    const/16 v6, 0x11

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setOriFilePath(Ljava/lang/String;)V

    const/16 v6, 0x13

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelItem;->setSuggestion(I)V

    const/16 v6, 0x14

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLatitude:D

    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mLongitude:D

    sget-boolean v6, Lcom/sec/android/gallery3d/data/ChannelItem;->USE_UNION_CMH:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/sec/android/gallery3d/data/ChannelItem;->USE_SCLOUD:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x17

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSCloudId:I

    const/16 v6, 0x18

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v10, :cond_5

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mIsScloudItem:Z

    :cond_1
    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/ChannelItem;->setWidth(I)V

    const/16 v5, 0x19

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/ChannelItem;->setHeight(I)V

    const/16 v5, 0x1b

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mFaceGroupId:I

    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/ChannelItem;->setOrientation(I)V

    :cond_2
    sget-boolean v5, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v5, :cond_4

    new-instance v5, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-direct {v5}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;-><init>()V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v5, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COVER_RECT_RATIO:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    if-ne v2, v11, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_ARTICLE_ID:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setArticleId(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setLikeByMe(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LIKE_COUNT:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setLikeCount(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_COMMENT_COUNT:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setCommentCount(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_TEXT:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setLatestCommentText(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_LATEST_COMMENT_USER:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setLatestCommentUser(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_SOCIAL_TYPE:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setSocialType(I)V

    new-instance v3, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;-><init>()V

    sget v5, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NAME:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->setOwnerName(Ljava/lang/String;)V

    sget v5, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_ITEM_OWNER_NUMBER:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->setOwnerNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setOwnerInfo(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ChannelItem;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    sget v6, Lcom/sec/android/gallery3d/data/ChannelItem;->INDEX_STORY_HOST_LIKED_COMMIT_STATUS:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->setCommitStatus(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
