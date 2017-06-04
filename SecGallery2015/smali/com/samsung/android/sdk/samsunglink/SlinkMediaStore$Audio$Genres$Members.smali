.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Genres$Members;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Genres;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Members"
.end annotation


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String;

.field public static final GENRE_ID:Ljava/lang/String; = "genre_id"

.field public static final GENRE_KEY:Ljava/lang/String; = "genre_key"

.field public static final GENRE_MAP_ID:Ljava/lang/String; = "genre_map_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH:Ljava/lang/String; = "genre_members"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "audio"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Genres$Members;->CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "genre_members"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Genres$Members;->ENTRY_CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "genre_members"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$Genres$Members;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUriForDevice(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "genre_members"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildDeviceContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
