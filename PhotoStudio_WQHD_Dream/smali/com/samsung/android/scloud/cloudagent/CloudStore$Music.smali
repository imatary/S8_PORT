.class public final Lcom/samsung/android/scloud/cloudagent/CloudStore$Music;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Music"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final CLOUD_CACHED_PATH:Ljava/lang/String; = "cloud_cached_path"

.field public static final CLOUD_COVERART_PATH:Ljava/lang/String; = "cloud_coverart_path"

.field public static final CLOUD_IS_AVAILABLE_OFFLINE:Ljava/lang/String; = "cloud_is_available_offline"

.field public static final CLOUD_IS_CACHED:Ljava/lang/String; = "cloud_is_cached"

.field public static final CLOUD_IS_DIR:Ljava/lang/String; = "cloud_is_dir"

.field public static final CLOUD_REVISION:Ljava/lang/String; = "cloud_revision"

.field public static final CLOUD_SERVER_ID:Ljava/lang/String; = "cloud_server_id"

.field public static final CLOUD_THUMB_PATH:Ljava/lang/String; = "cloud_thumb_path"

.field public static final COMPOSER:Ljava/lang/String; = "composer"

.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GENRE_NAME:Ljava/lang/String; = "genre_name"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final ORIGINAL_SIZE:Ljava/lang/String; = "original_size"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRACK:Ljava/lang/String; = "track"

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final _DATA:Ljava/lang/String; = "_data"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.android.scloud.cloudagent/data/music/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
