.class public Lcom/sec/android/gallery3d/util/RangeIntArray;
.super Ljava/lang/Object;
.source "RangeIntArray.java"


# instance fields
.field private final mData:[I

.field private final mOffset:I


# direct methods
.method public constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/RangeIntArray;->mData:[I

    iput p2, p0, Lcom/sec/android/gallery3d/util/RangeIntArray;->mOffset:I

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/RangeIntArray;->mData:[I

    iget v1, p0, Lcom/sec/android/gallery3d/util/RangeIntArray;->mOffset:I

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method
