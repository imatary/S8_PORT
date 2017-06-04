.class public interface abstract Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;
.super Ljava/lang/Object;
.source "CMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface$FileStorageStatus;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface$IFilesColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.cmh"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CMH_ALL_WATCH_URI:[Landroid/net/Uri;

.field public static final CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

.field public static final CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

.field public static final FILES_TABLE_NAME:Ljava/lang/String; = "files"

.field public static final FILES_TABLE_URI:Landroid/net/Uri;

.field public static final HIDE_ALBUM:Ljava/lang/String; = "hideAlbum"

.field public static final IMAGES_TABLE_NAME:Ljava/lang/String; = "images"

.field public static final IMAGES_TABLE_NOTIFY_NAME:Ljava/lang/String; = "notify_images"

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final LOCATION_TABLE_NAME:Ljava/lang/String; = "location"

.field public static final LOCATION_TABLE_URI:Landroid/net/Uri;

.field public static final NOTIFY_OPERATION_TAG_UPDATE:Ljava/lang/String; = "TAG_UPDATE"

.field public static final SHOW_ALBUM:Ljava/lang/String; = "showAlbum"

.field public static final VIDEOS_TABLE_NOTIFY_NAME:Ljava/lang/String; = "notify_videos"

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEO_TABLE_NAME:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "video"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "notify_images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "notify_videos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    return-void
.end method
