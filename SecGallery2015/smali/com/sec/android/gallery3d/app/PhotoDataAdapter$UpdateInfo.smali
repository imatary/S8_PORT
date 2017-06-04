.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field contentEnd:I

.field contentStart:I

.field curIndex:I

.field indexHint:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field reloadContent:Z

.field public size:I

.field public target:Lcom/sec/android/gallery3d/data/Path;

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method
