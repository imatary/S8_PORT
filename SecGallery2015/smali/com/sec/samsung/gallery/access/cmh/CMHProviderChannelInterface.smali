.class public interface abstract Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;
.super Ljava/lang/Object;
.source "CMHProviderChannelInterface.java"

# interfaces
.implements Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ILandmarkColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ISceneRegionColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IEventActivityTypes;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IEventActivityColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IEventCommentCommitStatus;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IEventCommentColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IEventContactColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IStoriesColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ICategoryColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ImageColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ITagColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IFaceColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$IUserTagsColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface$ISceneColumns;
    }
.end annotation


# static fields
.field public static final ACTIVITY_TABLE_URI:Landroid/net/Uri;

.field public static final AUTOITEM_STATUS_TABLE_URI:Landroid/net/Uri;

.field public static final AUTO_ITEM_STATUS_TABLE_NAME:Ljava/lang/String; = "autoitemstatus"

.field public static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "category"

.field public static final CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final CMH_NOTIFICATION_TAG_FOR_STORY:I = 0x8

.field public static final DETAILED_IMAGES_TABLE_NAME:Ljava/lang/String; = "detailed_imagesview"

.field public static final DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_VIDEOS_TABLE_NAME:Ljava/lang/String; = "detailed_videosview"

.field public static final DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_COMMENT_TABLE_NAME:Ljava/lang/String; = "story_comment"

.field public static final EVENT_COMMENT_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_CONTACT_TABLE_NAME:Ljava/lang/String; = "event_contact"

.field public static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field public static final GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final SCENE_TABLE_NAME:Ljava/lang/String; = "scene"

.field public static final SCENE_TABLE_URI:Landroid/net/Uri;

.field public static final STORY_ACTIVITY_TABLE_NAME:Ljava/lang/String; = "story_activity"

.field public static final STORY_TABLE_NAME:Ljava/lang/String; = "story"

.field public static final STORY_TABLE_URI:Landroid/net/Uri;

.field public static final TAGVIEW_TABLE_NAME:Ljava/lang/String; = "tagview"

.field public static final TAGVIEW_TABLE_URI:Landroid/net/Uri;

.field public static final USERTAG_TABLE_NAME:Ljava/lang/String; = "usertag"

.field public static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field public static final USE_SOCIAL_STORY:Z

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final VISION_TABLE_NAME:Ljava/lang/String; = "vision_intelligence"

.field public static final VISION_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "scene"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "detailed_imagesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "detailed_videosview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "story"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "event_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "tagview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->TAGVIEW_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "story_comment"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_COMMENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "story_activity"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->ACTIVITY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "autoitemstatus"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTOITEM_STATUS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vision_intelligence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->VISION_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSocialStory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    return-void
.end method
