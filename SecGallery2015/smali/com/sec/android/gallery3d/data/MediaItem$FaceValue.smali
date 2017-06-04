.class public Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FaceValue"
.end annotation


# instance fields
.field public mFaceId:I

.field public mFaceIndex:I

.field public mMaxSimilarity:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    iput p2, p0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    iput p3, p0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    return-void
.end method
