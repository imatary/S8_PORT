.class Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarEventItem"
.end annotation


# instance fields
.field private dtend:J

.field private dtstart:J

.field private location:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->dtstart:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->dtstart:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->dtend:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->dtend:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->location:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->title:Ljava/lang/String;

    return-object p1
.end method
