.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Artists;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$ArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Artists"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ARTIST_NAME:Ljava/lang/String; = "<unknown>"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String; = "artist"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "artist"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Artists;->CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "artist"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Artists;->ENTRY_CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "artist"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Artists;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUriForDevice(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "artist"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildDeviceContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
