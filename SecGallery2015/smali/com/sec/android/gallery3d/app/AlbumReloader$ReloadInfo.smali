.class Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
.super Ljava/lang/Object;
.source "AlbumReloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReloadInfo"
.end annotation


# instance fields
.field size:I

.field version:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    iput p3, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    return-void
.end method
