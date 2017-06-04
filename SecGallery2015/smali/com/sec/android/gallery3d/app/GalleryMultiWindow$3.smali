.class final Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;
.super Ljava/lang/Object;
.source "GalleryMultiWindow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryMultiWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getCollator()Ljava/text/Collator;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;->mCollator:Ljava/text/Collator;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;->mCollator:Ljava/text/Collator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;->mCollator:Ljava/text/Collator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;)I
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;->getCollator()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    check-cast p2, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;->compare(Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;)I

    move-result v0

    return v0
.end method
