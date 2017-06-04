.class interface abstract Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;
.super Ljava/lang/Object;
.source "UriMediaMMSAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FtColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FreeMessageFT"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final URI_FILE:Landroid/net/Uri;

.field public static final URI_THUMBNAIL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://im/ft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft_thumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->URI_FILE:Landroid/net/Uri;

    return-void
.end method
