.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String; = "image_thumbs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "image_thumbs"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "image_thumbs"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->ENTRY_CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "image_thumbs"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V
    .locals 7

    const-string/jumbo v1, "image_thumbs"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->cancelThumbnailRequest(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static getEntryUri(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "image_thumbs"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JJIIZZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    const-string/jumbo v1, "image_thumbs"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->getThumbnailImage(Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static openThumbnailInputStream(Landroid/content/ContentResolver;JJIIZZ)Ljava/io/InputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v1, "image_thumbs"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->getThumbnailInputStream(Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
