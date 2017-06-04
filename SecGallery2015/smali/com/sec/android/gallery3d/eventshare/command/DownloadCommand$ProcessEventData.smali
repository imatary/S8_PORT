.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;
.super Ljava/lang/Object;
.source "DownloadCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessEventData"
.end annotation


# instance fields
.field mOriginalPath:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;-><init>()V

    return-void
.end method


# virtual methods
.method setData(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->mOriginalPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->mPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;->timestamp:J

    return-void
.end method
